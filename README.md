# Getting and Cleaning Data Project
This repo contains the code and instructions for the course project of the Coursera course "Getting and Cleaning Data" 
within the "Data Scientist" series. See (https://class.coursera.org/getdata-013/) for the course details

## Introduction
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing 
- see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most 
advanced algorithms to attract new users. The data linked to from the course 
website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project to be used in order to fulfiill the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## run_analysis.R script
This repro contains one script called run_analysis.R that does the following. 
   * Merges the training and the test sets to create one data set.
   * Extracts only the measurements on the mean and standard deviation for each measurement. 
   * Uses descriptive activity names to name the activities in the data set
   * Appropriately labels the data set with descriptive variable names. 
   * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Usage
For details on how to use the script please refer to the codebook.md. It provided a detailed description on what and how 
the script is working.

## References
Link to the course project description and requirements:
* https://class.coursera.org/getdata-013/human_grading/view/courses/973500/assessments/3/submissions

Dataset used for analysis
* http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/

Description of the dataset used for the script is available at
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The training and test data set can be found at
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 