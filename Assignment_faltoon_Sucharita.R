
#Fantaloons Sales managers commented that % of males versus females walking in to the store differ based on day of the week. Analyze the data and determine whether there is evidence at 5 % significance level to support this hypothesis.

#Ho: male:female buyers same on weekends and weekdays
#Ha: male:female buyers differ on weekends and weekdays
library(readr)
faltoons<-read.csv("F://ExcelR//Assignment//Hypothesis testing//Faltoons.csv")
View(faltoons)
attach(faltoons)
table(faltoons)
table(Weekdays)
table(Weekend)

#Ho:male and female customer sales vary based on weekday and weekend 
#Ha:male and female customer sales donot vary based on weekday and weekend 
# y= %male vs % female are same of different on weekends and weekdays (discrete data)
# x= weekend, weekday (2 discrete data)

prop.test(x=c(167,113),n=c(400,400),conf.level = 0.95,correct = FALSE,alternative = "two.sided") # male on weekday differ from male on weekends

# as plow i.e <0.05 so null go, and we accept Ha: male:female buyers differ on weekends and weekdays
prop.test(x=c(167,113),n=c(400,400),conf.level = 0.95,correct = FALSE,alternative = "greater")

