install.packages("ggplot2")
library(ggplot2)


titanic<- read.csv ("Titanic.csv",stringsAsFactors = FALSE)
View(titanic)

#set up as factors
# ggplot2 is smart in certain aspects of how you code up visualization of ggplot2
#if you provide factor variables as a part of the visualization as part of the aesthetic
# we use factor variables to actually color code our visualization and really make them pop.


titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Survived <- as.factor(titanic$Survived)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)
  

#1 what is survival rate?

ggplot(titanic,aes(x=Survived))+geom_bar()
## firstof all we need titanic data, and then next we need anesthetic
# ie we are saying hey ggplot2 map the x axis to the survived column of the titanic data set.


# If you want in percentages
prop.table(table(titanic$Survived))


# for customization

ggplot(titanic, aes(x=Survived))+geom_bar()+labs(y="Passenger Count",title = "Survival rates")


# 2 What is survival rate by gender?

ggplot(titanic, aes(x=Sex,fill=Survived))+geom_bar()+labs(y="Passenger",title = "Survival by sex")
# fill: if you provide fill and assigned to categorical variable then you get is a nice color coding


#3 what is survival rate by class of tickets?

ggplot(titanic,aes(x=Pclass,fill=Survived))+geom_bar()+labs(y="Passenger count",title= "Survival rates by Pclass")

           
           