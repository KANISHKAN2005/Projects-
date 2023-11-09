library(rvest)
library(dplyr)
library(robotstxt)
url <-'https://www.icc-cricket.com/rankings/mens/player-rankings/odi'
web <- read_html(url)
View(web)
path = paths_allowed(url)
names <- web %>% html_nodes(".name a , .rankings-block__banner--name")%>% html_text()
View(names)
team <- web %>% html_nodes(".rankings-block__banner--nationality , .table-body__logo-text")%>% html_text()
View(team)
rating <- web %>% html_nodes(".rankings-block__banner--rating , .rating")%>% html_text()
View(rating)

icc_ranking = data.frame(names,rating,team)
View(icc)

write.csv(icc_ranking,"icc.csv")

str(icc_ranking)
