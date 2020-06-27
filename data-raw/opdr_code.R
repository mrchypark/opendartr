## code to prepare `opdr_code` dataset goes here

library(httr)
library(dplyr)
library(rvest)
library(zip)
library(stringr)
library(lubridate)

GET(paste0("https://opendart.fss.or.kr/api/corpCode.xml?crtfc_key=",
           Sys.getenv("OPENDART_KEY")),
    write_disk(path = "./data-raw/corpCode.zip", overwrite = T))

unzip("./data-raw/corpCode.zip", exdir = "./data-raw/", overwrite = T)

code <- read_xml("./data-raw/CORPCODE.xml")
code %>%
  html_nodes("corp_code") %>%
  html_text() -> corp_code

code %>%
  html_nodes("corp_name") %>%
  html_text() -> corp_name

code %>%
  html_nodes("stock_code") %>%
  html_text() %>%
  str_squish() -> stock_code

code %>%
  html_nodes("modify_date") %>%
  html_text() %>%
  ymd-> modify_date

opdr_code <- tibble(corp_name, corp_code, stock_code, modify_date)

usethis::use_data(opdr_code, overwrite = TRUE)
