
# project setup
setwd("C:/Users/Walter.Guillioli/Documents/GitHub/heavymetal")


require(tm)
require(tidyverse)

# load data

d <- c()

# iterate over all files and get artist/songname and lyrics
for (file in list.files(paste(getwd(), "/data/", sep=""))){
  
#  print(file)
  
  artist <- strsplit(file, "_")[[1]][1] #before _
  
  song <- strsplit(file, "_")[[1]][-1] #after _
  #song <- strsplit(song, ".")[1] #before .
  
  #print(artist)
  
  #print(c(artist,song))
  
  lyrics <- readLines(file(paste(getwd(), "/data/", file, sep="")), warn = FALSE)
  
  d <- rbind(d, cbind(artist, song, lyrics))
  
}

x <- readLines(file("C:/Users/Walter.Guillioli/Documents/GitHub/heavymetal/data/maiden_hallowedbethyname.txt"))



# create corpus
# eda of corpus
# saving / persisting corpus
# cleaning text
# fix metadata
# create tf-idf
# word clouds
# sentiment analysis
# classif?A