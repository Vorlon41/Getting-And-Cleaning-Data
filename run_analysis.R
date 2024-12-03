
setwd("C:/Users/User/Desktop/Temp/UCI HAR Dataset")
library(dplyr)
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

features <- read.table("features.txt")

activityLabels <- read.table("activity_labels.txt")
colnames(activityLabels) <- c("activityID", "activityType")

colnames(x_train) <- features[, 2]
colnames(y_train) <- "activityID"
colnames(subject_train) <- "subjectID"

colnames(x_test) <- features[, 2]
colnames(y_test) <- "activityID"
colnames(subject_test) <- "subjectID"
alltrain <- cbind(y_train, subject_train, x_train)

alltest <- cbind(y_test, subject_test, x_test)

finaldataset <- rbind(alltrain, alltest)
mean_and_std <- grepl("activityID|subjectID|mean\\(\\)|std\\(\\)", colnames(finaldataset))
setforMeanandStd <- finaldataset[, mean_and_std]
setWithActivityNames <- merge(setforMeanandStd, activityLabels, by = "activityID", all.x = TRUE)


tidySet <- setWithActivityNames %>%
  group_by(subjectID, activityID, activityType) %>%
  summarise_all(mean)


write.table(tidySet, "C:/Users/User/Desktop/tidySet.txt", row.names = FALSE)


print("Tidy dataset created and saved as 'tidySet.txt'")
