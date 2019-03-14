#title: Make-shots-data-script
#description: Modify the structure of indivitual data frame and export the summary.Create the data of the 5 players 
#input: The 5 csv files on the shot data of the individual players 
#output: 5 summary txt files of the individual players, 1 summary txt file for the overall data, i csv data file recording all the shot data. 

#importing data
library(dplyr)
curry = read.csv("../data/stephen-curry.csv", stringsAsFactors = F)
iguodala = read.csv("../data/andre-iguodala.csv", stringsAsFactors = F)
green = read.csv("../data/draymond-green.csv", stringsAsFactors = F)
durant = read.csv("../data/kevin-durant.csv", stringsAsFactors = F)
thompson = read.csv("../data/klay-thompson.csv", stringsAsFactors = F)

#adding "name" colume 
curry = mutate(curry, name = "Stephen Curry")
green = mutate(green, name = "Graymond Green")
durant = mutate(durant, name = "Kevin Durant")
thompson = mutate(thompson, name = "Klay Thompson")
iguodala = mutate(iguodala, name = "Andre Iguodala")

#changing shot_made_flag value
curry$shot_made_flag[curry$shot_made_flag == "y"] = "shot_yes"
curry$shot_made_flag[curry$shot_made_flag == "n"] = "shot_no"
durant$shot_made_flag[durant$shot_made_flag == "y"] = "shot_yes"
durant$shot_made_flag[durant$shot_made_flag == "n"] = "shot_no"
green$shot_made_flag[green$shot_made_flag == "y"] = "shot_yes"
green$shot_made_flag[green$shot_made_flag == "n"] = "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] = "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] = "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] = "shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] = "shot_no"

#add minute
curry = mutate(curry, minute = (period - 1) * 12 + 12 - minutes_remaining) 
durant = mutate(durant, minute = (period - 1) * 12 + 12 - minutes_remaining)
green = mutate(green, minute = (period - 1) * 12 + 12 - minutes_remaining)
thompson = mutate(thompson, minute = (period - 1) * 12 + 12 - minutes_remaining)
iguodala = mutate(iguodala, minute = (period - 1) * 12 + 12 - minutes_remaining)

#summary output
sink(file = "../output/stephen-curry-summary.txt")
summary(curry)
sink()
sink(file = "../output/kevin-durant-summary.txt")
summary(durant)
sink()
sink(file = "../output/klay-thompson-summary.txt")
summary(thompson)
sink()
sink(file = "../output/graymond-green-summary.txt")
summary(green)
sink()
sink(file = "../output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

#bind the rows and export the shot_data
gsw_data = rbind(curry[ , ], thompson[ , ], green[ , ], iguodala[ , ], durant[ , ])
write.csv(gsw_data, file = "../data/shots-data.csv")
sink(file = "../output/shots-data-summary.txt")
summary(gsw_data)
sink()

