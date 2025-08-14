library(dplyr)
library(httr2)
library(jsonlite)

# https://huggingface.co/models-json?p=1&sort=modified&author=KBLab&withCount=true

get_download_json <- function(author = "KBLab", type="models", page = 0) {
  # Get (paginated) download stats in JSON format from Hugging Face
  # type: "models" or "datasets"
  
  url <- paste0("https://huggingface.co/", type, "-json?p=", page, "&sort=modified&author=", author, "&withCount=true")
  
  response <- request(url) %>%
    req_perform()
  
  if (response$status_code != 200) {
    stop("Failed to fetch data: ", response$status_code)
  }
  
  content <- jsonlite::fromJSON(resp_body_string(response))
  return(content)
}

format_stats <- function(df) {
  # Format the download stats to conform to the desired structure
  # Extract model_name from id with format: organization/model_name
  df$model_name <- stringr::str_extract(df$id, "(?<=/)[^/]+$")
  df$organization <- df$author # org
  df$date <- Sys.Date() # Current date
  
  if (df$repoType[1] == "model") {
    df$model_url <- paste0("https://huggingface.co/", df$id)
  } else if (df$repoType[1] == "dataset") {
    df$model_url <- paste0("https://huggingface.co/datasets/", df$id)
  }
  
  df <- df %>%
    select(model_url, downloads, organization, model_name, date)
  
  return(df)
}

get_download_stats <- function(author = "KBLab", type = "models") {
  # Get all pages of download stats for a given author and type (models or datasets).
  # Format the stats and return as a tibble dataframe.
  stats <- get_download_json(author = author, type = type, page = 0)
  
  total_items <- stats$numTotalItems
  num_items_per_page <- stats$numItemsPerPage # API returns 30 items per page by default
  page_index <- stats$pageIndex
  
  total_pages <- ceiling(total_items / num_items_per_page)
  
  all_stats <- vector(mode="list", length = total_pages)
  
  all_stats[[1]] <- tibble::as_tibble(stats[[type]])
  
  if (total_pages > 1) {
    for (i in 2:total_pages) {
      stats_page <- get_download_json(author = author, type = type, page = i - 1)
      all_stats[[i]] <- tibble::as_tibble(stats_page[[type]])
    }
  }
  
  all_stats <- dplyr::bind_rows(all_stats)
  return(format_stats(all_stats))
}

df_kblab <- get_download_stats(author = "KBLab", type="models")
df_kb <- get_download_stats(author = "KB", type="models")
df_dataset <- get_download_stats(author = "KBLab", type="datasets")

df <- rbind(df_kblab, df_kb)

# Remove all models that are only tokenizers
df <- df %>%
  filter(!stringr::str_detect(model_url, "tokenizer"))

dir.create("data")
readr::write_csv(df, file = paste0("data/models/", Sys.Date(), "_hf.csv"))
readr::write_csv(df_dataset, file = paste0("data/datasets/", Sys.Date(), "_hf.csv"))

