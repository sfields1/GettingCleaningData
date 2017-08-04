
# Codebook

## The Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See features_info.txt for more details. 

I have replaced variable names with more human readable names. For example tBodyAcc-mean() was changed to TimeBodyAccelerationMean(X, Y, Z)

## Variables

activity: The activity performed for each subject. One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

Subject_ID: The subject identifier. From 1 to 30.

TimeBodyAccelerationMean-X: The mean of tBodyAcc-mean()-X for each combination of Activity and Subject
TimeBodyAccelerationMean-Y: The mean of tBodyAcc-mean()-Y for each combination of Activity and Subject
TimeBodyAccelerationMean-Z: The mean of tBodyAcc-mean()-Z for each combination of Activity and Subject
TimeBodyAccelerationStdDev-X: The mean of tBodyAcc-std()-X for each combination of Activity and Subject
TimeBodyAccelerationStdDev-Y: The mean of tBodyAcc-std()-Y for each combination of Activity and Subject
TimeBodyAccelerationStdDev-Z: The mean of tBodyAcc-std()-Z for each combination of Activity and Subject
TimeGravityAccelerationMean-X: The mean of tGravityAcc-mean()-X for each combination of Activity and Subject
TimeGravityAccelerationMean-Y: The mean of tGravityAcc-mean()-Y for each combination of Activity and Subject
TimeGravityAccelerationMean-Z: The mean of tGravityAcc-mean()-Z for each combination of Activity and Subject
TimeGravityAccelerationStdDev-X: The mean of tGravityAcc-std()-X for each combination of Activity and Subject
TimeGravityAccelerationStdDev-Y: The mean of tGravityAcc-std()-Y for each combination of Activity and Subject
TimeGravityAccelerationStdDev-Z: The mean of tGravityAcc-std()-Z for each combination of Activity and Subject
TimeBodyAccelerationJerkMean-X: The mean of tBodyAccJerk-mean()-X for each combination of Activity and Subject
TimeBodyAccelerationJerkMean-Y: The mean of tBodyAccJerk-mean()-Y for each combination of Activity and Subject
TimeBodyAccelerationJerkMean-Z: The mean of tBodyAccJerk-mean()-Z for each combination of Activity and Subject
TimeBodyAccelerationJerkStdDev-X: The mean of tBodyAccJerk-std()-X for each combination of Activity and Subject
TimeBodyAccelerationJerkStdDev-Y: The mean of tBodyAccJerk-std()-Y for each combination of Activity and Subject
TimeBodyAccelerationJerkStdDev-Z: The mean of tBodyAccJerk-std()-Z for each combination of Activity and Subject
TimeBodyGyroscopeMean-X: The mean of tBodyGyro-mean()-X for each combination of Activity and Subject
TimeBodyGyroscopeMean-Y: The mean of tBodyGyro-mean()-Y for each combination of Activity and Subject
TimeBodyGyroscopeMean-Z: The mean of tBodyGyro-mean()-Z for each combination of Activity and Subject
TimeBodyGyroscopeStdDev-X: The mean of tBodyGyro-std()-X for each combination of Activity and Subject
TimeBodyGyroscopeStdDev-Y: The mean of tBodyGyro-std()-Y for each combination of Activity and Subject
TimeBodyGyroscopeStdDev-Z: The mean of tBodyGyro-std()-Z for each combination of Activity and Subject
TimeBodyGyroscopeJerkMean-X: The mean of tBodyGyroJerk-mean()-X for each combination of Activity and Subject
TimeBodyGyroscopeJerkMean-Y: The mean of tBodyGyroJerk-mean()-Y for each combination of Activity and Subject
TimeBodyGyroscopeJerkMean-Z: The mean of tBodyGyroJerk-mean()-Z for each combination of Activity and Subject
TimeBodyGyroscopeJerkStdDev-X: The mean of tBodyGyroJerk-std()-X for each combination of Activity and Subject
TimeBodyGyroscopeJerkStdDev-Y: The mean of tBodyGyroJerk-std()-Y for each combination of Activity and Subject
TimeBodyGyroscopeJerkStdDev-Z: The mean of tBodyGyroJerk-std()-Z for each combination of Activity and Subject
TimeBodyAccelerationMagnitudeMean: The mean of tBodyAccMag-mean() for each combination of Activity and Subject
TimeBodyAccelerationMagnitudeStdDev: The mean of tBodyAccMag-std() for each combination of Activity and Subject
TimeGravityAccelerationMagnitudeMean: The mean of tGravityAccMag-mean() for each combination of Activity and Subject
TimeGravityAccelerationMagnitudeStdDev: The mean of tGravityAccMag-std() for each combination of Activity and Subject
TimeBodyAccelerationJerkMagnitudeMean: The mean of tBodyAccJerkMag-mean() for each combination of Activity and Subject
TimeBodyAccelerationJerkMagnitudeStdDev: The mean of tBodyAccJerkMag-std() for each combination of Activity and Subject
TimeBodyGyroscopeMagnitudeMean: The mean of tBodyGyroMag-mean() for each combination of Activity and Subject
TimeBodyGyroscopeMagnitudeStdDev: The mean of tBodyGyroMag-std() for each combination of Activity and Subject
TimeBodyGyroscopeJerkMagnitudeMean: The mean of tBodyGyroJerkMag-mean() for each combination of Activity and Subject
TimeBodyGyroscopeJerkMagnitudeStdDev: The mean of tBodyGyroJerkMag-std() for each combination of Activity and Subject
FrequenceBodyAccelerationMean-X: The mean of fBodyAcc-mean()-X for each combination of Activity and Subject
FrequenceBodyAccelerationMean-Y: The mean of fBodyAcc-mean()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationMean-Z: The mean of fBodyAcc-mean()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationStdDev-X: The mean of fBodyAcc-std()-X for each combination of Activity and Subject
FrequenceBodyAccelerationStdDev-Y: The mean of fBodyAcc-std()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationStdDev-Z: The mean of fBodyAcc-std()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMean-X: The mean of fBodyAccJerk-mean()-X for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMean-Y: The mean of fBodyAccJerk-mean()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMean-Z: The mean of fBodyAccJerk-mean()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationJerkStdDev-X: The mean of fBodyAccJerk-std()-X for each combination of Activity and Subject
FrequenceBodyAccelerationJerkStdDev-Y: The mean of fBodyAccJerk-std()-Y for each combination of Activity and Subject
FrequenceBodyAccelerationJerkStdDev-Z: The mean of fBodyAccJerk-std()-Z for each combination of Activity and Subject
FrequenceBodyGyroscopeMean-X: The mean of fBodyGyro-mean()-X for each combination of Activity and Subject
FrequenceBodyGyroscopeMean-Y: The mean of fBodyGyro-mean()-Y for each combination of Activity and Subject
FrequenceBodyGyroscopeMean-Z: The mean of fBodyGyro-mean()-Z for each combination of Activity and Subject
FrequenceBodyGyroscopeStdDev-X: The mean of fBodyGyro-std()-X for each combination of Activity and Subject
FrequenceBodyGyroscopeStdDev-Y: The mean of fBodyGyro-std()-Y for each combination of Activity and Subject
FrequenceBodyGyroscopeStdDev-Z: The mean of fBodyGyro-std()-Z for each combination of Activity and Subject
FrequenceBodyAccelerationMagnitudeMean: The mean of fBodyAccMag-mean() for each combination of Activity and Subject
FrequenceBodyAccelerationMagnitudeStdDev: The mean of fBodyAccMag-std() for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMagnitudeMean: The mean of fBodyBodyAccJerkMag-mean() for each combination of Activity and Subject
FrequenceBodyAccelerationJerkMagnitudeStdDev: The mean of fBodyBodyAccJerkMag-std() for each combination of Activity and Subject
FrequenceBodyGyroscopeMagnitudeMean: The mean of fBodyBodyGyroMag-mean() for each combination of Activity and Subject
FrequenceBodyGyroscopeMagnitudeStdDev: The mean of fBodyBodyGyroMag-std() for each combination of Activity and Subject
FrequenceBodyGyroscopeJerkMagnitudeMean: The mean of fBodyBodyGyroJerkMag-mean() for each combination of Activity and Subject
FrequenceBodyGyroscopeJerkMagnitudeStdDev: The mean of fBodyBodyGyroJerkMag-std() for each combination of Activity and Subject
