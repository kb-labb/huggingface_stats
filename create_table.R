library(ggplot2)
library(dplyr)

Sys.setlocale("LC_TIME", "C")

# dir.create("plots")
data_files <- list.files("data/models", full.names = TRUE)

df <- data_files %>%
  purrr::map_df(~readr::read_csv(.))

df_model <- df %>%
  group_by(model_name, date) %>%
  summarize(downloads = sum(downloads)) %>%
  mutate(year = lubridate::year(date),
         month = lubridate::month(date)) %>%
  arrange(model_name, year, month) %>%
  filter(!(model_name %in% c("ALL-MODELS-MOVED-TO-KBLAB", "tokenizer-test"))) %>%
  ungroup()

df_model["month"] <- stringr::str_pad(df_model$month, side = "left", width = 2, pad = "0")
df_model["yearmonth"] <- paste(df_model$year, df_model$month, sep = "-")

df_table <- df_model %>%
  select(model_name, yearmonth, downloads) %>%
  tidyr::pivot_wider(names_from=yearmonth, values_from=downloads)


knitr::kable(df_table, format="pipe")
