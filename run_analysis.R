## 0.1 Download and unzip datasets from UCI website
if(!file.exists("./Week4.zip")){
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile="./Week4/Week4.zip")
unzip(zipfile="./Week4/Week4.zip", exdir="./Week4")
}

## 0.2 Read applicable analysis files into R
week4 <- file.path("./Week4", "UCI HAR Dataset")
aTest  <- read.table(file.path(week4, "test" , "Y_test.txt" ),header = FALSE)
fTest  <- read.table(file.path(week4, "test" , "X_test.txt" ),header = FALSE)
sTest  <- read.table(file.path(week4, "test" , "subject_test.txt" ),header = FALSE)
aTrain  <- read.table(file.path(week4, "train" , "Y_train.txt" ),header = FALSE)
fTrain  <- read.table(file.path(week4, "train" , "X_train.txt" ),header = FALSE)
sTrain  <- read.table(file.path(week4, "train" , "subject_train.txt" ),header = FALSE)
aNames <- read.table(file.path(week4, "activity_labels.txt"))
fNames <- read.table(file.path(week4, "features.txt" ))

## 1.0 Combine rows from associated Test and Train datasets
aData <- rbind(aTest, aTrain)
fData <- rbind(fTest, fTrain)
sData <- rbind(sTest, sTrain)

## 1.1 Add variable names to combined datasets
colnames(aData) <- "Activity"
colnames(fData) <- fNames$V2
colnames(sData) <- "Subject"

## 1.2 Combine activity, feature, and subject data
tdat <- cbind(aData, fData, sData)

## 2.0 Subset cols to include Subject, Activtiy, and fNames with mean or std
fNames2 <- fNames$V2[grep("mean\\(\\)|std\\(\\)", fNames$V2)]
fNames3 <- c(as.character(fNames2), "Subject", "Activity")
subtdat <- subset(tdat, select=fNames3)

## 3.0 Replace Activity integers with descriptive names
msubdat <- merge(subtdat, aNames, by.x="Activity", by.y="V1")
subtdat$Activity <- msubdat$V2

## 4.0 Replace column labels with descriptive names and set ID variables as factors
names(subtdat) <- gsub("^t", "Time", names(subtdat))
names(subtdat) <- gsub("^f", "Freq", names(subtdat))
names(subtdat) <- gsub("Acc", "Accel", names(subtdat))
names(subtdat) <- gsub('[-()]', '', names(subtdat))
names(subtdat) <- tolower(names(subtdat))
subtdat$activity <- as.factor(subtdat$activity)
subtdat$subject <- as.factor(subtdat$subject)

## 5.0 Create tidy dataset with the average of each variable by subject/activity
library(reshape2)
finaldat <- melt(subtdat, id= c("subject", "activity"))
finalmean <- dcast(finaldat, subject + activity ~ variable, mean)
write.table(finalmean, "tidydata.txt", row.names=FALSE, quote=FALSE)