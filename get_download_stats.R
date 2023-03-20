library(rvest)
library(dplyr)

get_organization_models <- function(org_url){
  organization <- read_html(org_url)
  
  if (org_url == "KB.html"){
    xpath <- "/html/body/div/main/div/div/section[2]/div/div[1]/div/div"
  } else {
    xpath <- "/html/body/div/main/div/section[2]/div[2]/div/div/div"
  }
  
  organization_models <- organization %>%
    html_nodes(xpath=xpath) %>%
    html_nodes("a") %>%
    html_attr("href")
  
  org_model_urls <- paste0("https://huggingface.co", organization_models)
  
  return(org_model_urls)
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

# Copy outer html from Firefox/Chrome Inspect tool after clicking "Expand models"
kblab_models <- get_organization_models("KBLab.html") # https://huggingface.co/KBLab
kb_models <- get_organization_models("KB.html") # https://huggingface.co/KB

# Error handling in case of private models
poss_get_download_stats <- purrr::possibly(get_download_stats, otherwise=NULL) 

df_kblab <- purrr::map_df(kblab_models, poss_get_download_stats)
df_kb <- purrr::map_df(kb_models, poss_get_download_stats)

df <- rbind(df_kblab, df_kb)

# Remove all models that are only tokenizers
df <- df %>%
  filter(!stringr::str_detect(model_url, "tokenizer"))
 
# Match everything between penultimate and last '/' in URL. 
df$organization <- stringr::str_extract(string = df$model_url, "(?<=co/).*(?=/)")
# Match everything after last '/' in URL.
df$model_name <- stringr::str_extract(string = df$model_url, "[^/]*$")
df$date <- Sys.Date()

dir.create("data")
readr::write_csv(df, file = paste0("data/", Sys.Date(), "_hf.csv"))
