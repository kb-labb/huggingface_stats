library(ggplot2)
library(dplyr)
library(forcats)

dir.create("plots")
data_files <- list.files("data", full.names = TRUE)

df <- data_files %>%
  purrr::map_df(~readr::read_csv(.))
  
df_sum <- df %>%
  group_by(organization, date) %>%
  summarize(downloads = sum(downloads))

df_model <- df %>%
  group_by(model_name, date) %>%
  summarize(downloads = sum(downloads))


p_dl_org <- ggplot(data = df_sum, 
                      aes(x = date, y = downloads, fill = organization)) +
  geom_point(shape = 21, size = 4, colour = "black") + 
  expand_limits(y = 0) +
  scale_y_continuous(breaks = seq(0, max(df_sum$downloads) + 1000, by = 5000)) +
  theme_light(base_size = 8) +
  labs(y = "Number of downloads",
       x = "Date",
       title = "Total number of downloads by organization",
       fill = "Organization")


df_model_top <- df_model %>%
  arrange(-downloads) %>%
  ungroup %>%
  slice_max(downloads, n = 10)


p_dl_model <- ggplot(data = df_model_top, 
       aes(x = date, y = downloads, fill = fct_inorder(model_name))) +
  geom_point(shape = 21, size = 4, colour = "black") +
  theme_light(base_size = 8) +
  scale_y_continuous(breaks = seq(0, max(df_model_top$downloads) + 1000, by = 5000)) +
  expand_limits(y = 0) +
  labs(y = "Number of downloads",
       x = "Date",
       title = "Total number of downloads for top 10 models",
       fill = "Organization")


ggsave(p_dl_org, 
       filename = "plots/downloads_by_org.jpg", 
       dpi = 300, 
       type = "cairo",
       width = 1920, 
       height = 1080,
       units = "px")


ggsave(p_dl_model, 
       filename = "plots/downloads_by_model.jpg", 
       dpi = 300, 
       type = "cairo",
       width = 1920, 
       height = 1080,
       units = "px")

