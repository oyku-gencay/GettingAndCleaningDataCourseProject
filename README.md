# Coursera - Getting and Cleaning Data Course Project

## Description of the Project

This repository contains the script and description of the data for the Coursera Getting and Cleaning Data course project. The project consists of a self contained script "run_analysis.R" which downloads a raw set of data from the internet, cleans and tidies the data and outputs two separate files of data.

## Subject Matter
One of the most exciting areas in all of data science right now is wearable computing - [see for example this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The raw data for the project resides at 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Description of the Script

The code is an R script. When downloaded and executed, it does the following:

1. It downloads the raw data file from the internet and extracts it in the folder it was run
2. The extracted data set contains the raw files and description of the raw files.
3. The script merges so called training and test datasets into one data set.
4. It removed all columns except the mean and standard deviation of measurements.
5. It changes the labels of the data to be more descriptive 
6. Outputs two files
    - **combined_data.csv** : the cleaned and appropriately labeled data in CSV format (see codebook for description)
    - **avg_data.txt** : a file which contains average of each measurement for each activity and each subject in the previous file (see codebook for description)
    
Please see codebook.MD for description of the resulting data files.