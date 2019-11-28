#Exercise 9

#part 1
setwd("/Users/madeleinegirgis/Desktop/")
glucose<-read.csv("glucoseIBC.csv", stringsAsFactors = FALSE)
glucose
library(ggplot2)
ggplot(data=glucose,aes(x=X...Time, y=Average_Glucose_Level))+
  geom_point(data=glucose,aes(x=X...Time,y=Average_Glucose_Level))+
  geom_smooth(data=glucose,aes(x=X...Time,y=Average_Glucose_Level))+
  theme_classic()


#part 2
setwd("/Users/madeleinegirgis/Desktop/IBC_Exercise_09/")
data<-read.csv("data.txt")
head(data)
#barplot of the means of all populations 
ggplot(data=data,aes(x=region,y=(mean(observations))))+
  geom_bar(data=data,aes(x=region,y=(mean(observations))))
  

#scatterplot of all observations using (geom_jitter())
d<-ggplot(data=data,aes(x=region,y=observations))
d+geom_jitter(x=region,y=observations)

