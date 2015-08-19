##Codebook for the "averageData" dataset generated through the run_analysis.R script
###Summary
In this experiment, 30 subjects were observed on 5 different activities, on which several measurements were made. The variables in this dataset come from the accelerometer and gyroscope 3-axial raw signals (the 3 axes are named X, Y, Z). 2 types of signals were measured: time domain signals and frequency domain signals. This dataset returns the mean and standard deviation of the different variables that were originally measured on the X, Y and Z axes for both types of signals.

This dataset is composed of :
- 2 variables that identify the subject and the activity observed (subjectID and activity)
- 40 variables returning the mean and standard deviation of specific measurements of **time domain signals** for both the accelerometer and the gyroscope signals, on the X, Y and Z axes. 
- 26 variables returning the mean and standard deviation of specifif measurements of **frequency domain signals** for both the accelerometer and the gyroscope signals, on the X, Y and Z axes. 

###Detailed variables
####Variables that identify the subject and activity measured
- **subjectID:** identifies the subject that is observed. There are 30 subjects in the dataset.
- **activity:** indicates the activity measured:
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING

####Variables that return mean and standard deviation of specific measurements of *time domain signals*: 
######Note: "..." means "x", "Y" or "Z"
- **Time-BodyAccelerometer-Mean()-...:** Mean body acceleration, measured by the accelerometer for every axis X,Y,Z
- **Time-BodyAccelerometer-StdDev()-...:** Standard deviation of the body acceleration, measured by the accelerometer for every axis X,Y,Z
- **Time-GravityAccelerometer-Mean()-...:** Mean gravity acceleration, measured by the accelerometer for every axis X,Y,Z
- **Time-GravityAccelerometer-StdDev()-...:** Standard deviation of the gravity acceleration, measured by the accelerometer for every axis X,Y,Z
- **Time-BodyAccelerometerJerk-Mean()-...:** Mean body jerk, measured by the accelerometer for every axis X,Y,Z
- **Time-BodyAccelerometerJerk-StdDev()-...:** Standard deviation of the body jerk, measured by the accelerometer for every axis X,Y,Z
- **Time-BodyGyroscope-Mean()-...:** Mean body velocity, measured by the gyroscope for every axis X,Y,Z
- **Time-BodyGyroscope-StdDev()-...:** Standard deviation of the body velocity, measured by the gyroscope for every axis X,Y,Z
- **Time-BodyGyroscopeJerk-Mean()-...:** Mean body jerk, measured by the gyroscope for every axis X,Y,Z
- **Time-BodyGyroscopeJerk-StdDev()-...:** Standard deviation of the body jerk, measured by the gyroscope for every axis X,Y,Z
- **Time-BodyAccelerometerMagnitude-Mean():**  Mean acceleration magnitude, measured by the accelerometer
- **Time-BodyAccelerometerMagnitude-StdDev():**  Standard deviation of the acceleration magnitude, measured by the accelerometer
- **Time-GravityAccelerometerMagnitude-Mean():**  Mean acceleration gravity, measured by the accelerometer
- **Time-GravityAccelerometerMagnitude-StdDev():**  Standard deviation of the acceleration gravity, measured by the accelerometer
- **Time-BodyAccelerometerJerkMagnitude-Mean():**  Mean body acceleration jerk magnitude, measured by the accelerometer
- **Time-BodyAccelerometerJerkMagnitude-StdDev():**  Standard deviation of the body acceleration jerk magnitude, measured by the accelerometer
- **Time-BodyGyroscopeMagnitude-Mean():**  Mean body magnitude, measured by the gyroscope
- **Time-BodyGyroscopeMagnitude-StdDev():**  Standard deviation of the body magnitude, measured by the gyroscope
- **Time-BodyGyroscopeJerkMagnitude-Mean():**  Mean body jerk magnitude, measured by the gyroscope
- **Time-BodyGyroscopeJerkMagnitude-StdDev():**  Standard deviation of the jerk magnitude, measured by the gyroscope

####Variables that return mean and standard deviation of specific measurements of *frequency domain signals* ("..." means "x", "Y" or "Z"):
######Note: "..." means "x", "Y" or "Z"
- **Frequency-BodyAccelerometer-Mean()-...:** Mean body acceleration for the frequency domain signals, measured by the accelerometer for every axis X,Y,Z
- **Frequency-BodyAccelerometer-StdDev()-...:** Standard deviation of the body acceleration for the frequency domain signals, measured by the accelerometer for every axis X,Y,Z
- **Frequency-BodyAccelerometerJerk-Mean()-...:** Mean body acceleration jerk for the frequency domain signals, measured by the accelerometer for every axis X,Y,Z
- **Frequency-BodyAccelerometerJerk-StdDev()-...:** Standard deviation of the body acceleration jerk for the frequency domain signals, measured by the accelerometer for every axis X,Y,Z
- **Frequency-BodyGyroscope-Mean()-...:** Mean body velocity for the frequency domain signals, measured by the gyroscope for every axis X,Y,Z
- **Frequency-BodyGyroscope-Stdev()-...:** Standard deviation of the body velocity for the frequency domain signals, measured by the gyroscope for every axis X,Y,Z
- **Frequency-BodyAccelerometerMagnitude-Mean():**  Mean body acceleration magnitude for the frequency domain signals, measured by the accelerometer
- **Frequency-BodyAccelerometerMagnitude-StdDev():**  Standard deviation of the body acceleration magnitude for the frequency domain signals, measured by the accelerometer
- **Frequency-BodyAccelerometerJerkMagnitude-Mean()-...:** Mean acceleration jerk magnitude for the frequency domain signals, measured by the accelerometer
- **Frequency-BodyAccelerometerJerkMagnitude-StdDev()-...:** Standard deviation of the acceleration jerk magnitude for the frequency domain signals, measured by the accelerometer
- **Frequency-BodyGyroscopeMagnitude-Mean()-...:** Mean body velocity magnitude for the frequency domain signals, measured by the gyroscope
- **Frequency-BodyGyroscopeMagnitude-StdDev()-...:** Standard deviation of the body velocity magnitude for the frequency domain signals, measured by the gyroscope
- **Frequency-BodyGyroscopeJerkMagnitude-Mean()-...:** Mean body jerk magnitude for the frequency domain signals, measured by the gyroscopeMean
- **Frequency-BodyGyroscopeJerkMagnitude-StdDev()-...:** Standard deviation of the body jerk magnitude for the frequency domain signals, measured by the gyroscopeMean
