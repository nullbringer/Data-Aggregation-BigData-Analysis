library(ggplot2)
library(usmap)
library(tidyr)
library(rtweet)
library(stringr)

library(ggmap)
library(data.table)
library(maps)
library(maptools)
library(plyr)
library(dplyr)




## access token method: create token and save it as an environment variable
create_token(
  app = "urbangeek_dicLab",
  consumer_key = "rDD5UzBtRTPGNdlYFWIs6FgIN",
  consumer_secret = "ZyFEppXHcSWlUKT2yrllWgjylw5y5GCKdMQlUmElpVxwBIbaDh",
  access_token = "28061753-gaJ3U57jvxl3bAMOOhXkXcZbVygvDbeCtBAMlveTJ",
  access_secret = "l9kAOaSAlFKZQEO3yJA9M7EaDXMfVay59Rrv0LciKcUs8")

#q <- '\"Hindu\" OR \"Hinduism\" OR \"Iskcon\" OR \"Krishna\" '

#q <- '\"Islam\" OR \"Muslim\" OR \"Mecca\" OR \"Quran\" '

#q <- '\"Judaism\" OR \"Torah\" OR \"Jew\" OR \"Jewish\" OR \"Rabbi\" OR \"Tanakh\" OR \"Hanukkah\" '

#q <- '\"Christian\" OR \"Christianity\" OR \"Bible\" OR \"Christ\" OR \"Church\" OR \"Vatican\" OR \"Baptism\" OR \"Mormont\" OR \"Catholic\" OR \"Protestant\" '



rt <- search_tweets(
  q, 
  n = 20000,
  geocode = "39.8,-95.583068847656,2408km",  
  retryonratelimit = TRUE,
  lang = "en",
  include_rts = FALSE
)

## create lat/lng variables using all available tweet and profile geo-location data

print(nrow(rt))


#save_as_csv(rt, "data_files/1.csv", prepend_ids = TRUE, na = "",fileEncoding = "UTF-8")
#save_as_csv(rt, "data_files/2.csv", prepend_ids = TRUE, na = "",fileEncoding = "UTF-8")
#save_as_csv(rt, "data_files/3.csv", prepend_ids = TRUE, na = "",fileEncoding = "UTF-8")
save_as_csv(rt, "data_files/4.csv", prepend_ids = TRUE, na = "",fileEncoding = "UTF-8")

print(rt)
