# importing data
BAFTA_film <- read.csv("https://raw.githubusercontent.com/gungorMetehan/BAFTA/main/BAFTA_film.csv")

# dataset
genres <- c("Drama", "Romance", "Adventure", "War", "Comedy", "Thriller", 
            "Biography", "History", "Family", "Musical", "Crime", "Western", 
            "Music", "Sport", "Fantasy", "Action", "Mystery")

freq <- unname(sapply(genres, function(g) sum(grepl(g, BAFTA_film$genres))))

data4plot <- data.frame(genres, freq)

# loading 'ggplot2'
install.packages("ggplot2")
library(ggplot2)

# plotting
ggplot(data4plot, aes(x = reorder(genres, freq), y = freq)) +
  geom_segment(aes(x = genres, xend = genres, y = 0, yend = freq), color = "grey", linewidth = .75) +
  geom_point(color = "#FF62F8", size = 3.5) +
  theme_light() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.x = element_blank(),
    text = element_text(family = "AvantGarde", size = 12, color = "#404040"),
    plot.title = element_text(hjust = .5),
    plot.caption = element_text(size = 8, color = "#404040", vjust = 0, hjust = 0)) +
  coord_flip() +
  labs(x = "Genres", y = "", caption = "Data Source: bafta.org\nData Visualization by Metehan Güngör") +
  ggtitle(label = "BAFTA Loves Drama (1949-2025)")
