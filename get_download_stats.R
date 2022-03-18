library(rvest)

get_organization_models <- function(org_url){
  organization <- read_html(org_url)
  
  organization_models <- organization %>%
    html_nodes(xpath="/html/body/div/main/div/section[2]/div[1]/div/div/div[1]") %>%
    html_nodes("a") %>%
    html_attr("href")
  
  # org_model_urls <- paste0("https://huggingface.co", organization_models)
  
  return(organization_models)
}

get_download_stats <- function(model_url){
  downloads <- model_url %>% 
    read_html() %>%
    html_nodes(xpath="/html/body/div/main/div/section[2]/div[1]/dl/dd") %>%
    html_text2()
  
  downloads <- gsub("\\,", "", downloads) # remove commas in e.g. 1,281,893
  
  return(list("model_url" = model_url,
              "downloads" = as.numeric(downloads)))
}

kblab_models <- get_organization_models("KBLab.html") # https://huggingface.co/KBLab 
kb_models <- get_organization_models("KB.html") # https://huggingface.co/KBLab

df_kblab <- purrr::map_df(kblab_models, get_download_stats)
df_kb <- purrr::map_df(kb_models, get_download_stats)

df <- rbind(df_kblab, df_kb)

# Match everything between penultimate and last '/' in URL. 
df$organization <- stringr::str_extract(string = df$model_url, "(?<=co/).*(?=/)")
# Match everything after last '/' in URL.
df$model_name <- stringr::str_extract(string = df$model_url, "[^/]*$")
df$date <- Sys.Date()


dir.create("data")
readr::write_csv(df, file = paste0("data/", Sys.Date(), "_hf.csv"))
