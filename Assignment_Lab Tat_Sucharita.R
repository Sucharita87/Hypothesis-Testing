#A hospital wants to determine whether there is any difference in the average Turn Around Time (TAT) of reports of the laboratories on their preferred list. They collected a random sample and recorded TAT for reports of 4 laboratories. TAT is defined as sample collected to report dispatch.
#Analyze the data and determine whether there is any difference in average TAT among the different laboratories at 5% significance level.

# Ho: TAT for all labs are same
# Ha: TAT for all labs are different

library(readr)
labtest<-read.csv("F://ExcelR//Assignment//Hypothesis testing//LabTAT.csv")
View(labtest)
attach(labtest)

# y= continuous, x = discrete but 4 values so we will conduct ANOVA

#Ho: dataset for all 4 cases follow normal distribution
#Ha: dataset for all 4 cases donot follow normal distribution

shapiro.test(Laboratory.1) # p value= 0.5508
shapiro.test(Laboratory.2) # p value= 0.8637
shapiro.test(Laboratory.3) # p value= 0.4205
shapiro.test(Laboratory.4) # p value= 0.6619

# all pvalues> 0.05 so we accept Ho: dataset for all 4 cases follow normal distribution

#Ho: There is no variance in all the datasets
#Ha: There is variance in all the datasets

stack_data <-stack(labtest)
View(stack_data)
attach(stack_data)
library(car) # package for leveneTest
leveneTest(values~ind, data= stack_data) # used to check variance of data

# as p value = 0.05161, which is greater than 0.05, so accept Ho: There is no variance in all the datasets

# As y= cont and x=discrete with 4 values and data is following ND and there is no variance so we conduct ANOVA
Anova_result <- aov(values~ind, data = stack_data)
summary(Anova_result)
# as p value is very less and i s<0.05 so we accept alternate hypotheis i.e Ha: TAT for all labs are different

