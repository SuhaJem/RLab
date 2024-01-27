library(dplyr)

#create a  two data frame 

data1 <- data.frame(
  id = 1:5,
  age= c(10,20,30,40,50),
  name = c("A", "B", "C","D", "E"),
  score<-c(100,200,300,400,500)
)

data2<- data.frame(
  id = 1:3,
  bonus=c(90,100,30)
)
# print the data 

print(data1)
print(data2)

# filter and select 
filtered<- data1%>% filter(age>25)%>%select(id,name, age)
print(filtered)

# mutate
mutate<- data1%>%mutate(score_c= ifelse(score>85,"high","low"))
print(mutate)
# group and summarize 
group_summary<- data1%>%group_by(age)%>% summarise(avg_score=mean(score),max_s=max(score))
print(group_summary)

# arrange the data 
arrange_data<- data1%>%arrange(desc(score))
print(arrange_data)

# join 
join <- left_join(data1, data2, by ="id")
print(join )

