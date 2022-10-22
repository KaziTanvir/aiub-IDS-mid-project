# importing dataset
data <- read.csv("dataset.csv")

head(data)
print(data)
#checking if it is data frame or not

print(class(data))
# Checking missing value
sum(is.na(data$X))
sum(is.na(data$Murder))
sum(is.na(data$Assault))
sum(is.na(data$UrbanPop))
# there is one missing data in data$Assault Column
#Missing Value Handeling

#replacing the missing value by the mean value
data$Assault[is.na(data$Assault)]<- mean(data$Assault,na.rm = TRUE)
#checking noisy data
boxplot(data$Murder)
boxplot(data$Assault)
boxplot(data$UrbanPop)
#Noisy data handeling
#Here the state of South Carolina has 879 cases of assault which seems like an outlier consedering the trend of the data
data[data == 879.0000] <- mean(data$Assault)
#replacing the Outlier value by the mean value
#Here The IOWA state had urban population % of 570 which is not possible, it might have been a typo
data[data == 570] <- 57
#The urban population percentage in the new York is very low compared to others there can be typing mistake
data$UrbanPop[data$UrbanPop == 6] <- 60
#There is no need of data munging so the data cleaning step is complete

#There is no other data set to implement the data integration so this step is skipped

#Data Transformation
# the values of murder and assault are in decimal which is not possible so convert them into integers
data$Murder=lapply(ceiling(data$Murder),as.integer)
data$Assault=lapply(ceiling(data$Assault),as.integer)
#there is not need for data reduction

#Classifying the according to their population size
library(dplyr)

data<-data %>% mutate(Type =
                    case_when(UrbanPop < 50  ~ "Small", 
                              UrbanPop < 60  ~ "Medium",
                              UrbanPop < 70  ~ "Large",
                              UrbanPop >= 70 ~ "Extra Large")
)

#Generating the csv file for cleaned data set
data$Assault <- unlist(data$Assault)
write.csv(data,"I:\\Semester-10\\Data Science\\Mid Project\\cleaned_dataset.csv",row.names = FALSE)

