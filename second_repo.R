library(dplyr)
install.packages("rvest")
library(rvest)

URL <- 'https://www.cia.gov/library/publications/the-world-factbook/fields/2153.html#gm'

tableIT<- URL %>% read_html() %>% 
  html_nodes('table') %>% 
  html_table() %>% as.data.frame

URL2 <- 'https://www.cia.gov/library/publications/the-world-factbook/fields/2195.html#81'

tableGDP <- URL2 %>% read_html() %>% 
  html_nodes('table') %>% 
  html_table() %>% as.data.frame