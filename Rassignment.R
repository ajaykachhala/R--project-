df<-read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")

view(df)

#load library
install.packages("tidyverse")

#import library
library(tidyverse)

#check datatypes
str(df)


summary(df)

#columns name
names(df)

#shape
dim(df)

#first six profitability
head(df$Profitability)

#last six profitablity
tail(df$Profitability)



#average profitability
mean(df$Profitability)

median(df$Profitability) 

#average worldwide gross
mean(df$Worldwide.Gross)

#minimum worldwide gross
min(df$Worldwide.Gross)

#maximum worldwide gross
max(df$Worldwide.Gross)

#check for missing values
colSums(is.na(df))


#drop missing values
df<-na.omit(df)

#check to make sure that the rows have been removed
colSums(is.na(df))

#summary Statistics:
summary(df)

#scatterplot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) +
  geom_point()+scale_y_continuous(labels=scales::comma)+
  coord_cartesian(ylim=c(0,110))+theme(axis.text.x=element_text(angle=90))

#bar chart
ggplot(df,aes(x=Year))+geom_bar()

#Export clean data
write.csv(df,"clean_df.csv")




