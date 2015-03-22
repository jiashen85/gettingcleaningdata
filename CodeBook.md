This codebook describes the columns in the final data set **finalData** that is output by the R Script run_analysis.R.

* **SubjectID**: Each number uniquely identifies the subject who performed the activity. the SubjectID ranges from 1 to 30.

* **Activity**: Describes the activity that the person performed wearing the smartphone. The activities are:
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING
	
* **Features Columns**
	* The following convention were used to name the features:
		* Columns names that were derived in time were prefixed with T
		* Columns names that were derived in frequency were prefixed with F
		* The 3 types of statistics, Mean, Standard Deviation (Std) and Weighted average of the frequency components (MeanFreq) were appended as suffix to the column names.
		* Columns names used to denote 3-axial signals in the X, Y and  Z directions were further appended with X,Y and Z after the statistics suffix.
		* Features are CamelCased with spaces and punctuations removed from the original feature names.
		* The values for features are mean values summarised by SubjectID and Activity. For example, TBodyAccMeanX is the mean value of tBodyAcc-mean()-X summarised by SubjectID and Activity.
		* The mapping from the original features to the features in **finalData** are as follows: 
	
		* tBodyAcc-mean()-X -> TBodyAccMeanX
		* tBodyAcc-mean()-Y -> TBodyAccMeanY
		* tBodyAcc-mean()-Z -> TBodyAccMeanZ
		* tBodyAcc-std()-X -> TBodyAccStdX
		* tBodyAcc-std()-Y -> TBodyAccStdY
		* tBodyAcc-std()-Z -> TBodyAccStdZ
		* tGravityAcc-mean()-X -> TGravityAccMeanX
		* tGravityAcc-mean()-Y -> TGravityAccMeanY
		* tGravityAcc-mean()-Z -> TGravityAccMeanZ
		* tGravityAcc-std()-X -> TGravityAccStdX
		* tGravityAcc-std()-Y -> TGravityAccStdY
		* tGravityAcc-std()-Z -> TGravityAccStdZ
		* tBodyAccJerk-mean()-X -> TBodyAccJerkMeanX
		* tBodyAccJerk-mean()-Y -> TBodyAccJerkMeanY
		* tBodyAccJerk-mean()-Z -> TBodyAccJerkMeanZ
		* tBodyAccJerk-std()-X -> TBodyAccJerkStdX
		* tBodyAccJerk-std()-Y -> TBodyAccJerkStdY
		* tBodyAccJerk-std()-Z -> TBodyAccJerkStdZ
		* tBodyGyro-mean()-X -> TBodyGyroMeanX
		* tBodyGyro-mean()-Y -> TBodyGyroMeanY
		* tBodyGyro-mean()-Z -> TBodyGyroMeanZ
		* tBodyGyro-std()-X -> TBodyGyroStdX
		* tBodyGyro-std()-Y -> TBodyGyroStdY
		* tBodyGyro-std()-Z -> TBodyGyroStdZ
		* tBodyGyroJerk-mean()-X -> TBodyGyroJerkMeanX
		* tBodyGyroJerk-mean()-Y -> TBodyGyroJerkMeanY
		* tBodyGyroJerk-mean()-Z -> TBodyGyroJerkMeanZ
		* tBodyGyroJerk-std()-X -> TBodyGyroJerkStdX
		* tBodyGyroJerk-std()-Y -> TBodyGyroJerkStdY
		* tBodyGyroJerk-std()-Z -> TBodyGyroJerkStdZ
		* tBodyAccMag-mean() -> TBodyAccMagMean
		* tBodyAccMag-std() -> TBodyAccMagStd
		* tGravityAccMag-mean() -> TGravityAccMagMean
		* tGravityAccMag-std() -> TGravityAccMagStd
		* tBodyAccJerkMag-mean() -> TBodyAccJerkMagMean
		* tBodyAccJerkMag-std() -> TBodyAccJerkMagStd
		* tBodyGyroMag-mean() -> TBodyGyroMagMean
		* tBodyGyroMag-std() -> TBodyGyroMagStd
		* tBodyGyroJerkMag-mean() -> TBodyGyroJerkMagMean
		* tBodyGyroJerkMag-std() -> TBodyGyroJerkMagStd
		* fBodyAcc-mean()-X -> FBodyAccMeanX
		* fBodyAcc-mean()-Y -> FBodyAccMeanY
		* fBodyAcc-mean()-Z -> FBodyAccMeanZ
		* fBodyAcc-std()-X -> FBodyAccStdX
		* fBodyAcc-std()-Y -> FBodyAccStdY
		* fBodyAcc-std()-Z -> FBodyAccStdZ
		* fBodyAcc-meanFreq()-X -> FBodyAccMeanFreqX
		* fBodyAcc-meanFreq()-Y -> FBodyAccMeanFreqY
		* fBodyAcc-meanFreq()-Z -> FBodyAccMeanFreqZ
		* fBodyAccJerk-mean()-X -> FBodyAccJerkMeanX
		* fBodyAccJerk-mean()-Y -> FBodyAccJerkMeanY
		* fBodyAccJerk-mean()-Z -> FBodyAccJerkMeanZ
		* fBodyAccJerk-std()-X -> FBodyAccJerkStdX
		* fBodyAccJerk-std()-Y -> FBodyAccJerkStdY
		* fBodyAccJerk-std()-Z -> FBodyAccJerkStdZ
		* fBodyAccJerk-meanFreq()-X -> FBodyAccJerkMeanFreqX
		* fBodyAccJerk-meanFreq()-Y -> FBodyAccJerkMeanFreqY
		* fBodyAccJerk-meanFreq()-Z -> FBodyAccJerkMeanFreqZ
		* fBodyGyro-mean()-X -> FBodyGyroMeanX
		* fBodyGyro-mean()-Y -> FBodyGyroMeanY
		* fBodyGyro-mean()-Z -> FBodyGyroMeanZ
		* fBodyGyro-std()-X -> FBodyGyroStdX
		* fBodyGyro-std()-Y -> FBodyGyroStdY
		* fBodyGyro-std()-Z -> FBodyGyroStdZ
		* fBodyGyro-meanFreq()-X -> FBodyGyroMeanFreqX
		* fBodyGyro-meanFreq()-Y -> FBodyGyroMeanFreqY
		* fBodyGyro-meanFreq()-Z -> FBodyGyroMeanFreqZ
		* fBodyAccMag-mean() -> FBodyAccMagMean
		* fBodyAccMag-std() -> FBodyAccMagStd
		* fBodyAccMag-meanFreq() -> FBodyAccMagMeanFreq
		* fBodyBodyAccJerkMag-mean() -> FBodyBodyAccJerkMagMean
		* fBodyBodyAccJerkMag-std() -> FBodyBodyAccJerkMagStd
		* fBodyBodyAccJerkMag-meanFreq() -> FBodyBodyAccJerkMagMeanFreq
		* fBodyBodyGyroMag-mean() -> FBodyBodyGyroMagMean
		* fBodyBodyGyroMag-std() -> FBodyBodyGyroMagStd
		* fBodyBodyGyroMag-meanFreq() -> FBodyBodyGyroMagMeanFreq
		* fBodyBodyGyroJerkMag-mean() -> FBodyBodyGyroJerkMagMean
		* fBodyBodyGyroJerkMag-std() -> FBodyBodyGyroJerkMagStd
		* fBodyBodyGyroJerkMag-meanFreq() -> FBodyBodyGyroJerkMagMeanFreq

_For information on the original features and their meaning, the README.txt and features_info.txt that comes together with the data set should be referenced._