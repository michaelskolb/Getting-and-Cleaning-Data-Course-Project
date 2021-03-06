## Project Description
This project tidies a dataset from the following study:
  Human Activity Recognition Using Smartphones Dataset
  Version 1.0

## Study design and data processing

### Collection of raw data
Data was originally collected according to the following:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### Notes from raw data
For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Descriptive raw data files
The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Training subjects.
- 'test/subject_test.txt': Test subjects.

### Descriptive tidy data fields
- subject: identifies each test subject (1-30)
- activity: identifies each of the six activities performed by the test subjects
- The following fields are average mean / standard deviation results for each subject/activity: 
  - freqbodyacceljerkmeanx
  - freqbodyacceljerkmeany
  - freqbodyacceljerkmeanz
  - freqbodyacceljerkstdx
  - freqbodyacceljerkstdy
  - freqbodyacceljerkstdz
  - freqbodyaccelmagmean
  - freqbodyaccelmagstd
  - freqbodyaccelmeanx
  - freqbodyaccelmeany
  - freqbodyaccelmeanz
  - freqbodyaccelstdx
  - freqbodyaccelstdy
  - freqbodyaccelstdz
  - freqbodybodyacceljerkmagmean
  - freqbodybodyacceljerkmagstd
  - freqbodybodygyrojerkmagmean
  - freqbodybodygyrojerkmagmean
  - freqbodybodygyrojerkmagstd
  - freqbodybodygyrojerkmagstd
  - freqbodybodygyromagmean
  - freqbodybodygyromagmean
  - freqbodybodygyromagstd
  - freqbodybodygyromagstd
  - freqbodygyromeanx
  - freqbodygyromeany
  - freqbodygyromeanz
  - freqbodygyrostdx
  - freqbodygyrostdy
  - freqbodygyrostdz
  - timebodyacceljerkmagmean
  - timebodyacceljerkmagstd
  - timebodyacceljerkmeanx
  - timebodyacceljerkmeany
  - timebodyacceljerkmeanz
  - timebodyacceljerkstdx
  - timebodyacceljerkstdy
  - timebodyacceljerkstdz
  - timebodyaccelmagmean
  - timebodyaccelmagstd
  - timebodyaccelmeanx
  - timebodyaccelmeany
  - timebodyaccelmeanz
  - timebodyaccelstdx
  - timebodyaccelstdy
  - timebodyaccelstdz
  - timebodygyrojerkmagmean
  - timebodygyrojerkmagstd
  - timebodygyrojerkmeanx
  - timebodygyrojerkmeany
  - timebodygyrojerkmeanz
  - timebodygyrojerkstdx
  - timebodygyrojerkstdy
  - timebodygyrojerkstdz
  - timebodygyromagmean
  - timebodygyromagstd
  - timebodygyromeanx
  - timebodygyromeany
  - timebodygyromeanz
  - timebodygyrostdx
  - timebodygyrostdy
  - timebodygyrostdz
  - timegravityaccelmagmean
  - timegravityaccelmagstd
  - timegravityaccelmeanx
  - timegravityaccelmeany
  - timegravityaccelmeanz
  - timegravityaccelstdx
  - timegravityaccelstdy
  - timegravityaccelstdz

## Source
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
