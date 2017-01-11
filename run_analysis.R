#create /data directory if it does not already exist, then download file to /data directory

if(!file.exists("./data")){dir.create("/.data")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./data/Dataset.zip")

#unzip dataset to /data directory

unzip(zipfile = "./data/Dataset.zip", exdir = "./data")

#load required packages

library(dplyr)
library(data.table)
library(tidyr)

#reading subject, activity, and data files

filepath <- "C:/Users/sfiel_000/Documents/School/Coursera/RStudio WD/data/UCI HAR Dataset"
dataSubjectTrain <- tbl_df(read.table(file.path(filepath, "train", "subject_train.txt")))
dataSubjectTest <- tbl_df(read.table(file.path(filepath, "test", "subject_test.txt")))
dataActivityTrain <- tbl_df(read.table(file.path(filepath, "train", "Y_train.txt")))
dataActivityTest <- tbl_df(read.table(file.path(filepath, "test", "Y_test.txt")))
dataFeaturesTrain <- tbl_df(read.table(file.path(filepath, "train", "X_train.txt")))
dataFeaturesTest <- tbl_df(read.table(file.path(filepath, "test", "X_test.txt")))

#merge Subject, Activity, and Features by rows, name variables

dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity <- rbind(dataActivityTrain, dataActivityTest)
dataFeatures <- rbind(dataFeaturesTrain, dataFeaturesTest)

names(dataSubject) <- c("subject_id")
names(dataActivity) <- c("activity_id")
dataFeaturesNames <- read.table(file.path(filepath, "features.txt"), head = FALSE)
names(dataFeatures) <- dataFeaturesNames$V2

#merge training and test set

AllData <- cbind(dataSubject, dataActivity)
AllData <- cbind(dataFeatures, AllData)

#subset name of features by measurements on the 
#mean and standard deviation

SelectedNames <- dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

#add the activity_id column 

SelectedNames <- c(as.character(SelectedNames), "activity_id", "subject_id")
SubData <- subset(AllData, select = SelectedNames)

#load activity lables

ActivityNames <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)
names(ActivityNames) <- c("activity_id", "activity")

#merge the labels with our subsetted data
#remove the activity_id column

FinalData <- merge(SubData, ActivityNames, by = "activity_id", all.x = TRUE)
FinalData <- select(FinalData, -activity_id)

#renaming variables to make them easier to read and understand

names(FinalData) <- gsub("^t", "Time", names(FinalData))
names(FinalData) <- gsub("^f", "Frequence", names(FinalData))
names(FinalData) <- gsub("Acc", "Acceleration", names(FinalData))
names(FinalData) <- gsub("Mag", "Magnitude", names(FinalData))
names(FinalData) <- gsub("Gyro", "Gyroscope", names(FinalData))
names(FinalData) <- gsub("BodyBody", "Body", names(FinalData))
names(FinalData) <- gsub("\\()", "", names(FinalData))
names(FinalData) <- gsub("-mean", "Mean", names(FinalData))
names(FinalData) <- gsub("-std", "StdDev", names(FinalData))

#from data in step 4, create a second, independent tidy
#data set with the average of each variable for each
#activity and each subject

TidyData <- aggregate(select(FinalData, -activity, -subject_id), by = list(activity = FinalData$activity, subject_id = FinalData$subject_id), mean)

#write the new dataset to a text file called tidy_data

write.table(TidyData, file = "tidy_data.txt", row.names = FALSE)


