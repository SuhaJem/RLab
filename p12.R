# load the libraray
library(dplyr)
library(ggplot2)
library(readr)


#  load the data sets 
ipl_data<-read.csv("C:\\Users\\rashm\\Desktop\\data.csv")

# print
str(ipl_data)
summary(ipl_data)

# task 2
num_matches<- nrow(ipl_data)
unique_teams<-unique(c(ipl_data$team1, ipl_data$team2))

cat("\nNo of matches:", length(num_matches))
cat("\nNum _matches :", num_matches)
cat("\nUnique teams:", unique_teams)

# task 3
num_won <-  ipl_data%>% count(winner)%>%arrange(desc(n))
print(num_won)

average_runs<- mean(ipl_data$win_by_runs)
avg_totalwickets<-mean(ipl_data$win_by_wickets)
cat(" Average runs:", average_runs)
cat(" Average wickets:", avg_totalwickets)

# task 4
most<-  names(which.max(table(ipl_data$venue)))
cat("\n  mosttly used :" ,most)

# create a barplot 
bar_plot<- ggplot(num_won, aes(x= winner, y=n))+geom_bar( stat="identity", fill= "blue")+
  labs(x=" winner", y= " Team", title=" Barplot")+ theme(axis.text.x = element_text(angle=45, hjust=1))
plot(bar_plot)
