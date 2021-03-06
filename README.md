# Getting and cleaning data - Course project
This is the repository that contains the code and files for the JHU's Getting and Cleaning Data course project. It contains:
- the run_analysis.R script that performs the 5 step-analyses.
- the code book describing the variables contained in the tidy dataset
- the tidy dataset ('averageData.txt'), output of step 5.

The original dataset used for this course is the UCI's Human Activity Recognition Using Smartphones dataset. It can be downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
To run the 'run_analysis.R' script, you must download and uncompress the original dataset in your working directory. All files must be in the same working directory and must not be renamed.

The run_analysis.R script will do the following to the UCI HAR Dataset:
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive activity names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

##Comments on step 1
The datasets are merged using rbind() in order to produce one global dataset for both the train and test sets. Note that activity and subject IDs are also added in the process.

##Comments on step 2
In order to select and extract specific columns, a logical vector ('meanstdcol') is created and applied to the global dataset produced on step 1. Per the specifications, apart from the subjectID and activityID columns, the specific columns to be extracted are those measuring the mean and standard deviation on each measurement. As indicated in the 'features_info.txt' file, those are the variables that end with -mean() and -std(). 

I chose to exclude the 'angle(..., ...Mean)' variables since they are described as "additional vectors averaging the signals", as well as the '...-meanFreq()'  variables, which are the "weighted average of frequency components" (cf. 'feature_info.txt'). Since those variables are not the means of measurements per se, I considered they did not meet the requirements.

##Comments on step 3
The activityID column is modified using the mutate() and rename() functions from the 'dplyr' library. The activityIDs are matched with the corresponding labels from the activity_labels.txt file.

##Comments on step 4
The variables are renamed with more descriptive names, using gsub() function. More specifically, the changes made in the labels are the following:
- All '-mean' and '-std' terms are replaced respectively with -Mean and -StdDev. 
- The initial 't' and 'f' are replaced with 'Time-' and 'Frequency-'.
- The 'Acc', 'Gyro' and 'Mag' terms are replaced with their full names 'Accelerometer', 'Gyroscope' and 'Magnitude'.
- The 'Bodybody' typo is corrected.

The variables are further described in the 'codebook.md' file.

##Comments on step 5
The ddply() function from the 'dplyr' library is used to apply the colMeans function on each variable, for each subject and activity. The corresponding dataset is uploaded in an independent dataset called 'averageData.txt', located in the working directory. It can be read using read.table() function, with the argument header = TRUE.
