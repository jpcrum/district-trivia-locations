library(tidyverse)
library(sf)
library(mapview)

dc_bar_trivia <- read.csv("C:/Users/jackc/OneDrive/Documents/DC Trivia Bars.csv")
dc_bar_trivia$Day <- factor(dc_bar_trivia$Day,
                               levels = c("Mon", "Tues", "Wed", "Thu", "Sun"))

mapview(dc_bar_trivia, 
        xcol = "Longitude", 
        ycol = "Latitude", 
        zcol = "Day",
        crs = 4269, 
        grid = FALSE)
