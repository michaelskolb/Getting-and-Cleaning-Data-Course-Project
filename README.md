# Getting-and-Cleaning-Data-Course-Project

## Project file structure

### Source and initialization of raw data files
All files in this section are downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- 'README.txt' was sourced into Repo as basis for 'Code Book.md'
- 'features_info.txt' file was sourced for information about variables for feature vector.
- 'activity_labels.txt' file was sourced for class labels mapping to activity name.
- 'train/y_train.txt': Training labels -> aTrain
- 'test/y_test.txt': Test labels -> aTest
- 'train/X_train.txt': Training set -> fTrain
- 'test/X_test.txt': Test set -> fTest
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample -> sTrain
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample -> sTest
- 'features.txt' file was sourced to ist of all features -> fNames

### Rows from the following files were combined as aData
- 'train/y_train.txt': aTrain
- 'test/y_test.txt': aTest

### Rows from the following files were combined as fData
- 'train/X_train.txt': fTrain
- 'test/X_test.txt': fTest

### Rows from the following files were combined as sData
- 'train/subject_train.txt': sTrain
- 'test/subject_test.txt': sTest

### V2 labels from the following file were added as variable names in fData
- 'features.txt': fNames

### Columns from the following files were combined as tDat
- aData
- fData
- sData
