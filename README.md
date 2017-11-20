# Getting and Cleaning Data Course Project

## Source and initialize raw data files
### 0.1 Download and unzip datasets from UCI website
All files were downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- 'README.txt' was sourced into Repo as basis for 'Code Book.md'
- 'features_info.txt' file was sourced for information about variables for feature vector.
### 0.2 Read applicable analysis files into R
- 'train/y_train.txt': Training labels -> aTrain
- 'test/y_test.txt': Test labels -> aTest
- 'train/X_train.txt': Training set -> fTrain
- 'test/X_test.txt': Test set -> fTest
- 'train/subject_train.txt': Each row identifies the subject who performed the activity -> sTrain
- 'test/subject_test.txt': Each row identifies the subject who performed the activity -> sTest
- 'activity_labels.txt' file was sourced for class labels mapping to activity name -> aNames
- 'features.txt' file was sourced to ist of all features -> fNames

## Combine datasets and associated variable names
### 1.0 Combine rows from associated Test and Train datasets
The following files are combined as aData
- 'train/y_train.txt': aTrain
- 'test/y_test.txt': aTest
The following files are combined as fData
- 'train/X_train.txt': fTrain
- 'test/X_test.txt': fTest
The following files are combined as sData
- 'train/subject_train.txt': sTrain
- 'test/subject_test.txt': sTest
### 1.1 Add variable names to combined datasets
- aData variable = "Activity"
- fData variable = names from file fNames
- sData variable = "Subject"
### 1.2 Combine activity, feature, and subject data
aData, fData, sData are combined as tdat

## 2.0 Subset columns from tdat
Only include columns from tdat with Subject, Activtiy, or fNames with mean or std

## 3.0 Replace Activity integers with descriptive names
Activity itegers (1-6) from subtdat are replaced with the actions describing the activity

## 4.0 Replace column labels with descriptive names
- Column labels in subtdat are made to be more descriptive
- activity and subject variables are cast as a factors

## 5.0 Create independent tidy dataset
The folllowing library(reshape2) functions are used to:
- Assign finaldat as melt function with ID variables "subject" and "activity"
- Assign finalmean as dcast function to calculate mean for ID/measurement variable combinations in finaldat
- Write finalmean data to .txt file called tidydata.txt
