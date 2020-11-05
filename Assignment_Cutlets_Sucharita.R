#A F&B manager wants to determine whether there is any significant difference in the diameter of the cutlet between two units. A randomly selected sample of cutlets was collected from both units and measured? Analyze the data and draw inferences at 5% significance level. Please state the assumptions and tests that you carried out to check validity of the assumptions.
#Ho: The cutlet diameter is same for unit A and B
#Ha: The cutlet diameter vary for unit A and B

library(readr)
cutletdia <- read.csv("F://ExcelR//Assignment//Hypothesis testing//Cutlets.csv")
View(cutletdia)
attach(cutletdia)

#Ho:the dataset follow normal distribution
#Ha: the dataset donot follow normal distribution

shapiro.test(Unit.A)
# p value = 0.32 which is > 0.05, so we accept Ho: dataset for unit A follows normal distribution
shapiro.test(Unit.B)
# p value = 0.5225 which is > 0.05, so we accept Ho: dataset for unit B follows normal distribution

#Ho:Unit A and B have no variance
#Ha:Unit A and B have variance

var.test(Unit.A, Unit.B)
# p value= 0.3136 which is> 0.05 so we accept Ho: Unit A and B have o variance, so we apply 2 sample T test

#Ho: The cutlet diameter is same for unit A and B
#Ha: The cutlet diameter is not same for unit A and B

t.test(Unit.A,Unit.B,alternative = "two.sided",conf.level = 0.95,correct = TRUE)
# p value= 0.4723 which is> 0.05 so we accept Ho: The cutlet diameter is same for unit A and B
