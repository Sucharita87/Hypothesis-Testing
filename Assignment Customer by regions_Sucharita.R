#TeleCall uses 4 centers around the globe to process customer order forms. They audit a certain %  of the customer order forms. Any error in order form renders it defective and has to be reworked before processing.  The manager wants to check whether the defective %  varies by centre. Please analyze the data at 5% significance level and help the manager draw appropriate inferences
# Ho: % defect donot vary by center
# Ha: % defect vary by center

library(readr)
cof<-read.csv("F://ExcelR//Assignment//Hypothesis testing//Customer+OrderForm.csv", stringsAsFactors = T)
View(cof)
attach(cof)
Phillipines_new <- as.numeric(Phillippines)
Malta_new <-as.numeric(Malta)
India_new <- as.numeric(India)
Indonesia_new <- as.numeric(Indonesia)
New_df <-data.frame(Phillipines_new, Malta_new, India_new, Indonesia_new)
View(New_df)
Stack_region <-stack(New_df)
attach(Stack_region)
View(Stack_region)
table(Stack_region)
chisq.test(table(Stack_region))
# P VALUE = 0.2771 >0.05, p high so null fly and we accept null hypothesis
# Ho: % defect donot vary by center