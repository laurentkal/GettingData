#This script will do the following to the UCI HAR Dataset:
#1. Merge the training and the test sets to create one data set.
#2. Extract only the measurements on the mean and standard deviation for each measurement. 
#3. Use descriptive activity names to name the activities in the data set
#4. Appropriately label the data set with descriptive activity names. 
#5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

#########################################################################################
library(plyr)

#Step 1 - Merges the training and the test sets to create one data set.

#Read in and merge the test and training sets 
xTrain <- read.table("./train/X_train.txt", header = FALSE)
xTest <- read.table("./test/X_test.txt", header = FALSE)
x <- rbind(xTrain, xTest)

#Read in the features measures and assign them as column names for the merged dataset
features <- read.table("./features.txt", header = FALSE)
colnames(x) <- features[,2]

#Read in and merge the subject test and train labels
subjectTrain <- read.table("./train/subject_train.txt", header = FALSE)
subjectTest <- read.table("./test/subject_test.txt", header = FALSE)
subjectID <- rbind(subjectTrain, subjectTest)
colnames(subjectID) <- "subjectID"

#Read in and merge the activity labels
yTrain <- read.table("./train/y_train.txt", header = FALSE)
yTest <- read.table("./test/y_test.txt", header = FALSE)
activityID <- rbind(yTrain, yTest)
colnames(activityID) <- "activityID"

#Merge the final dataset by adding the subject and activity columns
data <- cbind(subjectID, activityID, x)

#########################################################################################

#Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.

#Create a logical vector to match all means and std variables in data (excluding meanFreq and stdFreq)
meanstdCol <- (grepl("subjectID", colnames(data))|grepl("activityID", colnames(data))|grepl("-mean()", colnames(data))|grepl("-std()", colnames(data))) & !grepl("meanFreq", colnames(data))

#Apply the logical vector to data in order to keep only the corresponding columns
data <- data[, meanstdCol==TRUE]

#########################################################################################

#Step 3 - Uses descriptive activity names to name the activities in the data set

#Read in the activity labels table and rename its columns
activityLabels <- read.table("./activity_labels.txt")
colnames(activityLabels) = c("activityID", "activityLab")

#Match and replace the activityType column in the data table with the corresponding activityLabels
data <- mutate(data, activityID = activityLabels$activityLab[activityID])
data <- rename(data, replace = c("activityID" = "activity"))

#########################################################################################

#Step 4 - Appropriately labels the data set with descriptive variable names

for (i in 1:length(colnames(data)))
{
        colnames(data)[i] = gsub("-std","-StdDev",colnames(data)[i])
        colnames(data)[i] = gsub("-mean","-Mean",colnames(data)[i])
        colnames(data)[i] = gsub("tBody","Time-Body",colnames(data)[i])
        colnames(data)[i] = gsub("tGravity", "Time-Gravity", colnames(data)[i])
        colnames(data)[i] = gsub("fBody","Frequency-Body",colnames(data)[i])
        colnames(data)[i] = gsub("fGravity","Frequency-Gravity",colnames(data)[i])
        colnames(data)[i] = gsub("tGravity","Time-Gravity",colnames(data)[i])
        colnames(data)[i] = gsub("Gyro","Gyroscope",colnames(data)[i])
        colnames(data)[i] = gsub("Mag","Magnitude",colnames(data)[i])
        colnames(data)[i] = gsub("Acc","Accelerometer",colnames(data)[i])
        colnames(data)[i] = gsub("BodyBody","Body",colnames(data)[i])
}

#########################################################################################

#Step 5 - From the data set in step 4, creates a second, independent tidy data set with 
#the average of each variable for each activity and each subject.

#Create a new dataset with the mean of each variable, for each subject and activity
averageData <- ddply(data, .(subjectID, activity), function(x) colMeans(x[, 3:68]))

#Upload the dataset as a txt file
write.table(averageData, "./averageData.txt", row.names = FALSE)
