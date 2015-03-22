
# load the required packages
library(dplyr)

# Creates a function to camel casing the column names
camelCase<- function(features){
        fx <- strsplit(features," ")
        fx <- sapply(fx, FUN=function(x)
                paste0(toupper(substring(x,1,1)),substring(x,2,nchar(x))))
        fx <- sapply(fx, function(x) paste(x,collapse=""))
        fx
}

# Read the test and training subjects data before combining them as 
# part of the subject and activity data set variable called saData.
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
saData <- rbind(subjectTest,subjectTrain)
colnames(saData)[1] <- "SubjectID"

# Reads the class labels and their activity name
activityLabel <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activityLabel) <- c("ActivityID","Activity")

# Read the test and training labels into the variable allLabels 
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
allLabels <- rbind(testLabel,trainLabel)

# Name the label column as ActivityID and merges it with the activity name
colnames(allLabels)[1] <- "ActivityID"
allLabels <- merge(allLabels,activityLabel,by.x="ActivityID",by.y="ActivityID")

saData <- cbind(saData,allLabels$Activity)
colnames(saData)[2] <- "Activity"

# Read the test and train set
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
allData <- rbind(testData,trainData)

# Read features and then subset allData by features 
features <- read.delim("./UCI HAR Dataset/features.txt", header=FALSE,sep=" ")
features <- features$V2
names(allData) <- features
allData <- allData[grep("((mean).*\\(\\))|((std).*\\(\\))",
                        names(allData), 
                        ignore.case=TRUE)]

# Clean the column names
sfeatures <- names(allData)
sfeatures <- gsub("[[:punct:]]"," ",sfeatures)
sfeatures <- gsub(" {2,}", " ",sfeatures)
sfeatures <- camelCase(sfeatures)
names(allData) <- sfeatures

# Combine the subjects
aggData <- cbind(saData,allData)
aggData <- aggData %>%
                group_by(SubjectID, Activity) %>% 
                summarise_each(funs(mean))

# Construct Final Data Set with required subjects and activities
uniqueActivities <- sort(unique(aggData$Activity))
uniqueSubjects <- unique(aggData$SubjectID)
repCount <- length(uniqueSubjects) / length(uniqueActivities)
finalData <- rep(uniqueSubjects,length(uniqueActivities))
finalData <- as.data.frame(sort(finalData))
finalData <- cbind(finalData,rep(uniqueActivities,repCount))
names(finalData) <- c("SubjectID","Activity")

# Merge final data set with aggregated data set (aggdata)
finalData <- merge(finalData,aggData,by=c("SubjectID","Activity"),all=TRUE)
