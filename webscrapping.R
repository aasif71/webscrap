# IMPORTING LIBRARIES
library(rvest)
library(dplyr)

# SCRAPPING WEBSITE
link <- "https://www.businessinsider.in/entertainment/news/the-50-best-movies-of-all-time-according-to-critics/slidelist/75814368.cms"

# ALLOWABILITY
#path = paths_allowed(link)

# HTML ELEMENTS FROM WEBSITE
web <- read_html(link)

# SEGREGATING NAME
name <- web %>% html_nodes("h2") %>% html_text()

# VIEWING NAME LIST
View(name)

RAM <- web %>% html_nodes(".specs_li:nth-child(1) label:nth-child(5)") %>% html_text()

# VIEWING YEAR LIST
View(RAM)

# SEGREGATING RATEING
price <- web %>% html_nodes(".slide-description p:nth-child(3)") %>% html_text()

# VIEWING RATING LIST
View(price)

mobiles <- data.frame(moviename, user score ,critic score)

View(mobiles)

write.csv(mobiles,"my mobiles data.csv")