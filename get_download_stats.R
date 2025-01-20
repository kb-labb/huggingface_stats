library(rvest)
library(dplyr)

get_organization_models <- function(org_url){
  organization <- read_html(org_url)
  
  if (org_url == "KB.html"){
    xpath <- "/html/body/div/main/div/div/section[2]/div/div[1]/div/div"
  } else {
    xpath <- "/html/body/div/main/div/div/section[2]/div/div[3]/div/div"
  }
  
  organization_models <- organization %>%
    html_nodes(xpath=xpath) %>%
    html_nodes("a") %>%
    html_attr("href")
  
  org_model_urls <- paste0("https://huggingface.co", organization_models)
  
  return(org_model_urls)
}

get_organization_datasets <- function(org_url){
  html <- read_html(org_url)
  xpath <- "/html/body/div/main/div/div/section[2]/div/div[4]/div/div"
  
  organization_datasets <- html %>%
    html_nodes(xpath=xpath) %>%
    html_nodes("a") %>%
    html_attr("href")
  
  org_dataset_urls <- paste0("https://huggingface.co", organization_datasets)
  return(org_dataset_urls)
}

get_download_stats <- function(url, type="model"){
  
  if (type == "model"){
    xpath <- "/html/body/div/main/div/section[2]/div[1]/dl/dd"
  } else if (type == "dataset") {
    xpath <- "/html/body/div/main/div[2]/section[2]/dl/dd"
  }
  
  downloads <- url %>%
    read_html() %>%
    html_nodes(xpath=xpath) %>%
    html_text2()
  
  downloads <- gsub("\\,", "", downloads) # remove commas in e.g. 1,281,893
  
  return(list("model_url" = url,
              "downloads" = as.numeric(downloads)))
}

# Copy outer html from Firefox/Chrome Inspect tool after clicking "Expand models"
kblab_models <- get_organization_models("KBLab.html") # https://huggingface.co/KBLab
kblab_datasets <- get_organization_datasets("KBLab.html")
kb_models <- get_organization_models("KB.html") # https://huggingface.co/KB

# Error handling in case of private models
poss_get_download_stats <- purrr::possibly(get_download_stats, otherwise=NULL) 

df_kblab <- purrr::map_df(kblab_models, ~poss_get_download_stats(.x, type="model"))
df_dataset <- purrr::map_df(kblab_datasets, ~poss_get_download_stats(.x, type="dataset"))
df_kb <- purrr::map_df(kb_models, poss_get_download_stats)

df <- rbind(df_kblab, df_kb)

# Remove all models that are only tokenizers
df <- df %>%
  filter(!stringr::str_detect(model_url, "tokenizer"))
 
# Match everything between penultimate and last '/' in URL. 
df$organization <- stringr::str_extract(string = df$model_url, "(?<=co/).*(?=/)")
df_dataset$organization <- stringr::str_extract(string = df_dataset$model_url, "(?<=datasets/).*(?=/)")
# Match everything after last '/' in URL.
df$model_name <- stringr::str_extract(string = df$model_url, "[^/]*$")
df_dataset$model_name <- stringr::str_extract(string = df_dataset$model_url, "[^/]*$") # dataset name
df$date <- Sys.Date()
df_dataset$date <- Sys.Date()

dir.create("data")
readr::write_csv(df, file = paste0("data/models/", Sys.Date(), "_hf.csv"))
readr::write_csv(df_dataset, file = paste0("data/datasets/", Sys.Date(), "_hf.csv"))

