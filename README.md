# Purpose
The purpose of the run_analysis.R script is to prepare a separate data set containing data collected from the accelerometers from the Samsung Galaxy S smartphone so that it can be used for later analysis.

# Using the Script
* The script should reside in your R working directory.
* The data for the script should be downloaded from [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and also unzipped in the your working directory. The name of the data folder should be **UCI HAR Dataset**
* This script makes use of the package **dplyr** and it should be installed prior to running to script.

# Script Details
The script performs the following tasks:
* Loads the library dplyr.
* Creates a function to camel casing the column names.
* Read and combines the test and training subjects data and before storing them as part of the subject and activity data set variable called **saData**.
# Reads the class labels and their activity name and store them in the variable **activityLabel**
* Reads and combines the test and training class labels together with the activity name and store them in the variable **allLabels**.
* Binds the subjects stored in **saData** and activity names in **allLabels**.
* Reads and combines the test and training set into the variable **allData**
* Reads the features and assign the features to its respective columns in **allData**
* Selects only the measurements on the mean and standard deviation for each measurement in **allData**. This is done by using regular expressions. 
* Clean the column names in **allData** to remove all spaces and punctuations and subsequently camel casing it.
* Binds **saData** and **allData** into a single data set variable called **aggData** before using the mean function to summarize them by Subject and Activity.
* Constructs the independent tidy data set and store it in the variable called  **finalData** containing the summarized data together with information on which activities did the subject not perform (indicated by NAs).

_The CodeBook.md should be referenced for details on the variables in **finalData**_