
# Sales of products in four different regions is tabulated for males and females. 
#Find if male-female buyer ratios are similar across regions.

#Ho: all proportions are equal
#Ha: all proportions are not equal

library(readr)
buyer_ratio<- read.csv("F://ExcelR//Assignment//Hypothesis testing//BuyerRatio.csv")
View(buyer_ratio)
attach(buyer_ratio)
c1<-buyer_ratio$North # create new dataframe structuer as in the current structure have both alphbets and numerci data
c2<-buyer_ratio$South
c3<-buyer_ratio$East
c4<-buyer_ratio$West
newdf<-data.frame(c1,c2,c3,c4)
View(newdf)
chisq.test(newdf)
# p value = 0.6603 which is > 0.05 so we accept Ho: all proportions are equal