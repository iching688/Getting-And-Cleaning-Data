## download data file and unzip it if the file deosn't exist
if (!file.exists("./activity.zip")) {
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, dest="./activity.zip")
        unzip("./activity.zip")
        dateDownloaded <- date()
}

library(data.table)
library(dplyr)

## reading training data
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors=FALSE)
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt", stringsAsFactors=FALSE)
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors=FALSE)

## reading test data
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors=FALSE)
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt", stringsAsFactors=FALSE)
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors=FALSE)

## reading activity and features labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
featureLabels <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)

## test_subject, train_subject: contain subject ID
## test_x, train_x: contain 2947 observations of 561 features
## test_y, train_y: contain activity names

## Part1. Merges the training and the test sets to create one data set
# Assign proper column names
names(test_x) <- featureLabels$V2
names(train_x) <- featureLabels$V2
names(test_subject) <- c("Subject")
names(train_subject) <- c("Subject")
names(test_y) <- c("Activity")
names(train_y) <- c("Activity")

# Merge training and test datasets
testData <- cbind(test_subject, test_y, test_x)
trainData <- cbind(train_subject, train_y, train_x)
combinedData <- rbind(testData, trainData)

## Part2. Extracts only the measurements on the mean and standard deviation
desiredColumnNames <- grep(".*mean.*|.*std.*", names(combinedData), ignore.case=TRUE)
extractedData <- combinedData[,c("Subject", "Activity", names(combinedData)[desiredColumnNames])]

## Part3. Uses descriptive activity names to name the activities in the data set
for (i in 1:6){
        extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}

## Part4.Appropriately labels the data set with descriptive variable names
names(extractedData) <- gsub("^t","Time",names(extractedData))
names(extractedData) <- gsub("^f","Frequency",names(extractedData))
names(extractedData) <- gsub("Acc","Accelerometer",names(extractedData))
names(extractedData) <- gsub("Gyro","Gyroscope",names(extractedData))
names(extractedData) <- gsub("Mag","Magnitude",names(extractedData))
names(extractedData) <- gsub("\\()","",names(extractedData))
names(extractedData) <- gsub("tBody", "TimeBody", names(extractedData))
names(extractedData) <- gsub("BodyBody", "Body", names(extractedData))

## Part5. From the data set in step 4, creates a second, independent tidy data set
##        with the average of each variable for each activity and each subject
analyzedData <- aggregate(. ~Subject + Activity, extractedData, mean)
analyzedData <- arrange(analyzedData, Subject, Activity)
write.table(analyzedData, file="TidyData.txt", row.name=FALSE)






