# Code Book

## Introduction

This code book describes tidy data set produced from raw data of **"Human Activity Recognition Using Smartphones Dataset
"**

The study is carried out by:  

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universit‡ degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  

For details, see  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Raw data used in this project is obtained from   
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


## Code Book

Information regarding the raw data is provided with the README.txt file in the downloaded data set. The information contained here describes the variables and output for the resulting tidy data set. Please consult with the raw data README.txt file regarding how the raw data.


## Summarization

One of the data output of the script is called **"avg_data.txt"** and it is produced by  

`write.table(averages_data, "avg_data.txt", row.name=FALSE)`  

Feel free to change the `row.name` parameter value to **TRUE** to output the column names. The variables in this data file are the averages of each variable by **subject** and **activity**
## Variables

The output of the script contains two tidy data files. The tidy data file is called "combined_data.csv" and it is in the CSV format.

The output file contains means and standard deviation of measurements that come from "accelerometer" and "gyroscope" of the device in 3-axis (X, Y and Z) in time domain and a Fast Fourier Transform (FFT) applied to signals to produce frequency domain.

Time domain variables are prefixed with **TimeDomain.** and frequency domain variables are prefixed with **FrequencyDomain.**

The variables that are measured from 3-axis are suffixed with **.X**, **.Y** and **.Z** respectively.

The values that contain the mean value of measurements contain **.Mean** and standard deviation of those measurements contain **.StandardDeviation**


| Variable | Description
-----------|-------------
| Activity | The activity performed
| Subject | Subject ID
| TimeDomain.BodyAcceleration.Mean.X | Mean time for acceleration of body for X direction
| TimeDomain.BodyAcceleration.Mean.Y | Mean time for acceleration of body for Y direction
| TimeDomain.BodyAcceleration.Mean.Z | Mean time for acceleration of body for Z direction
| TimeDomain.BodyAcceleration.StandardDeviation.X | Standard deviation of time for acceleration of body for X direction
| TimeDomain.BodyAcceleration.StandardDeviation.Y | Standard deviation of time for acceleration of body for Y direction
| TimeDomain.BodyAcceleration.StandardDeviation.Z | Standard deviation of time for acceleration of body for Z direction
| TimeDomain.GravityAcceleration.Mean.X | Mean time of acceleration of gravity for X direction
| TimeDomain.GravityAcceleration.Mean.Y | Mean time of acceleration of gravity for Y direction
| TimeDomain.GravityAcceleration.Mean.Z | Mean time of acceleration of gravity for Z direction
| TimeDomain.GravityAcceleration.StandardDeviation.X | Standard deviation of time of acceleration of gravity for X direction
| TimeDomain.GravityAcceleration.StandardDeviation.Y | Standard deviation of time of acceleration of gravity for Y direction
| TimeDomain.GravityAcceleration.StandardDeviation.Z | Standard deviation of time of acceleration of gravity for Z direction
| TimeDomain.BodyAccelerationJerk.Mean.X | Mean time of body acceleration jerk for X direction
| TimeDomain.BodyAccelerationJerk.Mean.Y | Mean time of body acceleration jerk for Y direction
| TimeDomain.BodyAccelerationJerk.Mean.Z | Mean time of body acceleration jerk for Z direction
| TimeDomain.BodyAccelerationJerk.StandardDeviation.X | Standard deviation of time of body acceleration jerk for X direction
| TimeDomain.BodyAccelerationJerk.StandardDeviation.Y | Standard deviation of time of body acceleration jerk for Y direction
| TimeDomain.BodyAccelerationJerk.StandardDeviation.Z | Standard deviation of time of body acceleration jerk for Z direction
| TimeDomain.BodyGyro.Mean.X | Mean body gyroscope measurement for X direction
| TimeDomain.BodyGyro.Mean.Y | Mean body gyroscope measurement for Y direction
| TimeDomain.BodyGyro.Mean.Z | Mean body gyroscope measurement for Z direction
| TimeDomain.BodyGyro.StandardDeviation.X | Standard deviation of body gyroscope measurement for X direction
| TimeDomain.BodyGyro.StandardDeviation.Y | Standard deviation of body gyroscope measurement for Y direction
| TimeDomain.BodyGyro.StandardDeviation.Z | Standard deviation of body gyroscope measurement for Z direction
| TimeDomain.BodyGyroJerk.Mean.X | Mean jerk signal of body for X direction
| TimeDomain.BodyGyroJerk.Mean.Y | Mean jerk signal of body for Y direction
| TimeDomain.BodyGyroJerk.Mean.Z | Mean jerk signal of body for Z direction
| TimeDomain.BodyGyroJerk.StandardDeviation.X | Standard deviation of jerk signal of body for X direction
| TimeDomain.BodyGyroJerk.StandardDeviation.Y | Standard deviation of jerk signal of body for Y direction
| TimeDomain.BodyGyroJerk.StandardDeviation.Z | Standard deviation of jerk signal of body for Z direction
| TimeDomain.BodyAccelerationMagnitude.Mean | Mean magnitude of body Acc
| TimeDomain.BodyAccelerationMagnitude.StandardDeviation | Standard deviation of magnitude of body Acc
| TimeDomain.GravityAccelerationMagnitude.Mean | Mean gravity acceleration magnitude
| TimeDomain.GravityAccelerationMagnitude.StandardDeviation | Standard deviation of gravity acceleration magnitude
| TimeDomain.BodyAccelerationJerkMagnitude.Mean | Mean magnitude of body acceleration jerk
| TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation | Standard deviation of magnitude of body acceleration jerk
| TimeDomain.BodyGyroMagnitude.Mean | Mean magnitude of body gyroscope measurement
| TimeDomain.BodyGyroMagnitude.StandardDeviation | Standard deviation of magnitude of body gyroscope measurement
| TimeDomain.BodyGyroJerkMagnitude.Mean | Mean magnitude of body body gyroscope jerk measurement
| TimeDomain.BodyGyroJerkMagnitude.StandardDeviation | Standard deviation of magnitude of body body gyroscope jerk measurement
| FrequencyDomain.BodyAcceleration.Mean.X | Mean frequency of body acceleration for X direction
| FrequencyDomain.BodyAcceleration.Mean.Y | Mean frequency of body acceleration for Y direction
| FrequencyDomain.BodyAcceleration.Mean.Z | Mean frequency of body acceleration for Z direction
| FrequencyDomain.BodyAcceleration.StandardDeviation.X | Standard deviation of frequency of body acceleration for X direction
| FrequencyDomain.BodyAcceleration.StandardDeviation.Y | Standard deviation of frequency of body acceleration for Y direction
| FrequencyDomain.BodyAcceleration.StandardDeviation.Z | Standard deviation of frequency of body acceleration for Z direction
| FrequencyDomain.BodyAccelerationJerk.Mean.X | Mean frequency of body accerlation jerk for X direction
| FrequencyDomain.BodyAccelerationJerk.Mean.Y | Mean frequency of body accerlation jerk for Y direction
| FrequencyDomain.BodyAccelerationJerk.Mean.Z | Mean frequency of body accerlation jerk for Z direction
| FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X | Standard deviation frequency of body accerlation jerk for X direction
| FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y | Standard deviation frequency of body accerlation jerk for Y direction
| FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z | Standard deviation frequency of body accerlation jerk for Z direction
| FrequencyDomain.BodyGyro.Mean.X | Mean frequency of body gyroscope measurement for X direction
| FrequencyDomain.BodyGyro.Mean.Y | Mean frequency of body gyroscope measurement for Y direction
| FrequencyDomain.BodyGyro.Mean.Z | Mean frequency of body gyroscope measurement for Z direction
| FrequencyDomain.BodyGyro.StandardDeviation.X | Standard deviation frequency of body gyroscope measurement for X direction
| FrequencyDomain.BodyGyro.StandardDeviation.Y | Standard deviation frequency of body gyroscope measurement for Y direction
| FrequencyDomain.BodyGyro.StandardDeviation.Z | Standard deviation frequency of body gyroscope measurement for Z direction
| FrequencyDomain.BodyAccelerationMagnitude.Mean | Mean frequency of body acceleration magnitude
| FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation | Standard deviation of frequency of body acceleration magnitude
| FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean | Mean frequency of body acceleration jerk magnitude
| FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation | Standard deviation of frequency of body acceleration jerk magnitude
| FrequencyDomain.BodyBodyGyroMagnitude.Mean | Mean frequency of magnitude of body gyroscope measurement
| FrequencyDomain.BodyBodyGyroMagnitude.StandardDeviation | Standard deviation of frequency of magnitude of body gyroscope measurement
| FrequencyDomain.BodyBodyGyroJerkMagnitude.Mean | Mean frequency of magnitude of body gyroscope jerk measurement
| FrequencyDomain.BodyBodyGyroJerkMagnitude.StandardDeviation | Standard deviation frequency of magnitude of body gyroscope jerk measurement
