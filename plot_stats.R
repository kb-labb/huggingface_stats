library(ggplot2)
library(dplyr)
library(forcats)

Sys.setlocale("LC_TIME", "C")

# dir.create("plots")
data_files <- list.files("data/models", full.names = TRUE)

df <- data_files %>%
  purrr::map_df(~readr::read_csv(.))


df_total_sum <- df %>% 
  group_by(date) %>%
  summarize(downloads = sum(downloads))
  
p_dl_total <- ggplot(data = df_total_sum, 
              aes(x = date, y = downloads)) +
  geom_line(colour = "firebrick2") +
  geom_point(shape = 21, size = 1.5, colour = "black", fill = "firebrick2") + 
  expand_limits(y = 0) +
  scale_y_continuous(breaks = seq(0, max(df_total_sum$downloads) + 5000, by = 50000), 
                     labels = function(x) format(x, big.mark = " ", decimal.mark = ".", scientific = FALSE)) +
  scale_x_date(date_labels = "%Y-%b", 
               breaks = unique(df_total_sum$date)[seq(1, length(unique(df_total_sum$date)), by=3)],
               guide = guide_axis(n.dodge = 2)) +
  theme_light(base_size = 8) +
  labs(y = "Number of downloads",
       x = "Date",
       title = "Total number of downloads per month for KB's models on Huggingface")




# df_sum <- df %>%
#   group_by(organization, date) %>%
#   summarize(downloads = sum(downloads))
# 
# p_dl_org <- ggplot(data = df_sum, 
#                       aes(x = date, y = downloads, fill = organization)) +
#   geom_line(aes(color = organization)) +
#   geom_point(shape = 21, size = 3, colour = "black") + 
#   expand_limits(y = 0) +
#   scale_y_continuous(breaks = seq(0, max(df_sum$downloads) + 3000, by = 10000),
#                      labels = function(x) format(x, big.mark = " ", decimal.mark = ".", scientific = FALSE)) +
#   scale_x_date(date_labels = "%b", breaks = unique(df_model_top$date)) +
#   theme_light(base_size = 8) +
#   labs(y = "Number of downloads",
#        x = "Date",
#        title = "Total number of downloads by organization for KB's models on Huggingface",
#        fill = "Organization") +
#   guides(color = "none")


df_model <- df %>%
  group_by(model_name) %>%
  summarize(downloads = sum(downloads)) %>%
  arrange(-downloads) %>%
  ungroup %>%
  slice_max(downloads, n = 10) 

# Models with top 10 most downloads over entire period
df_model_top <- df[df$model_name %in% df_model$model_name, ]

df_model_top <- df_model_top %>%
  group_by(date, model_name) %>%
  summarize(downloads = sum(downloads))

p_dl_model <- ggplot(data = df_model_top, 
                     aes(x = date, y = downloads, fill = fct_reorder(model_name, desc(downloads)))) +
  geom_line(aes(color = fct_reorder(model_name, desc(downloads)))) +
  geom_point(shape = 21, size = 1.5, colour = "black") +
  theme_light(base_size = 8) +
  scale_y_continuous(breaks = seq(0, max(df_model_top$downloads) + 3000, by = 20000),
                     labels = function(x) format(x, big.mark = " ", decimal.mark = ".", scientific = FALSE)) +
  scale_x_date(date_labels = "%Y-%b", 
               breaks = unique(df_total_sum$date)[seq(1, length(unique(df_total_sum$date)), by=4)], 
               guide = guide_axis(n.dodge = 2)) +
  expand_limits(y = 0) +
  theme(legend.text = element_text(size = 5.5),
        legend.title = element_text(size = 7)) +
  labs(y = "Number of downloads",
       x = "Date",
       title = "Number of downloads by model name for top 10 models",
       fill = "Model") +
  guides(color = "none")


ggsave(p_dl_total, 
       filename = "plots/downloads_total.jpg", 
       dpi = 300, 
       width = 1920, 
       height = 1080,
       units = "px")

# ggsave(p_dl_org, 
#        filename = "plots/downloads_by_org.jpg", 
#        dpi = 300, 
#        width = 1920, 
#        height = 1080,
#        units = "px")


ggsave(p_dl_model, 
       filename = "plots/downloads_by_model.jpg", 
       dpi = 300, 
       width = 1920, 
       height = 1080,
       units = "px")

