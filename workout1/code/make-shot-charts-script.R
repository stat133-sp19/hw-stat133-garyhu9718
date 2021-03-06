#title: make-shot-charts-script.R
#short description: Make shot-charts for the players.
#input: shots-data.csv
#output:the shot charts of the five players respectively and an overall presentation of them. 

data = read.csv(file = "../data/shots-data.csv")
curry = data[data$name == "Stephen Curry", ]
thompson = data[data$name == "Klay Thompson", ]
durant = data[data$name == "Kevin Durant", ]
green = data[data$name == "Graymond Green", ]
iguodala = data[data$name == "Andre Iguodala", ]

library(jpeg)
library(grid)
library(ggplot2)
court_file = 
court_image = rasterGrob(
  readJPEG("../images/nba-court1.jpg"),
  width = unit(1,"npc"),
  height = unit(1,"npc")
)


thompson_shot_chart = ggplot(thompson)+
  annotation_custom(court_image, -250,250,-50,420)+
  geom_point(aes(x = x , y = y,color = shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: Klay Thompson(2016 season)")+
  theme_minimal()+
  ggsave("../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5, units = "in")

curry_shot_chart = ggplot(curry)+
  annotation_custom(court_image, -250,250,-50,420)+
  geom_point(aes(x = x , y = y,color = shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: Stephen Curry(2016 season)")+
  theme_minimal()+
  ggsave("../images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5, units = "in")

green_shot_chart = ggplot(green)+
  annotation_custom(court_image, -250,250,-50,420)+
  geom_point(aes(x = x , y = y,color = shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: Draymond Green(2016 season)")+
  theme_minimal()+
  ggsave("../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5, units = "in")

durant_shot_chart = ggplot(durant)+
  annotation_custom(court_image, -250,250,-50,420)+
  geom_point(aes(x = x , y = y,color = shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: Kevin Durant(2016 season)")+
  theme_minimal()+
  ggsave("../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5, units = "in")

iguodala_shot_chart = ggplot(iguodala)+
  annotation_custom(court_image, -250,250,-50,420)+
  geom_point(aes(x = x , y = y,color = shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: Andre Iguodala(2016 season)")+
  theme_minimal()+
  ggsave("../images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5, units = "in")

gsw_shot_chart = ggplot(data)+
  annotation_custom(court_image, -250,250,-50,420)+
  geom_point(aes(x = x , y = y,color = shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart:GSW (2016 season)")+
  theme_minimal()+
  facet_wrap(~name)+
  ggsave(file = "../images/gsw-shot-charts.pdf", width = 8, height = 7, units = "in")+
  ggsave(file = "../images/gsw-shot-charts.png", width = 8, height = 7, units = "in")


