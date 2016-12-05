# GettingAndCleaningDataProject
CourseProject

## Instructions
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
Review criterialess 
The submitted data set is tidy.
The Github repo contains the required scripts.
GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
The README that explains the analysis files is clear and understandable.
The work submitted for this project is the work of the student who submitted it.
Getting and Cleaning Data Course Projectless 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files

run_analysis.R - script for cleaning data and performing the analysis, generates the tidy data set (for code exlanations, see below)

tidyData.csv - tidy data set with the average of each variable for each activity and each subject

codeBook.md - describes the variables, the data, and any transformations or work performed to clean up the data 


## Code explanations - run_analysis.R
###0 # 
Download the raw data (UCI HAR Dataset) set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Then unzip the UCI HAR Dataset and read in the different tables. 

      # download the data set to "Data" folder
      if(!file.exists("./Data")) {dir.create("./Data")}
      fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      if(!file.exists("./Data/DataSet.zip")) {download.file(fileURL, "./Data/DataSet.zip")}

      # unzip the data set to "Data" folder
      if(!file.exists("./Data/UCI HAR Dataset")) {unzip ("./Data/DataSet.zip", exdir="./Data")}

      # Reading sets (measurements)
      set_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
      set_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
      
      # Reading activity labels
      activity_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
      activity_train <- read.table("./Data/UCI HAR Dataset/train/y_train.txt")
      
      # Reading subject ids - Each row identifies the subject who performed the activity for each window sample.  
      subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
      subject_train <- read.table("./Data/UCI HAR Dataset/train/subject_train.txt")
      
      # Reading Features - List of all features
      features <- read.table("./Data/UCI HAR Dataset/features.txt")      
      
      # Reading Activity labels - Links the class labels with their activity name
      activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt") 

###1 # 
Merges training/test sets, training/test activity labels and training/test subjects 

      # sets
      set_merge <- rbind(set_test, set_train)
      
      # activity labels
      activity_merge <- rbind(activity_test, activity_train)
      
      # subject ids
      subject_merge <- rbind(subject_test, subject_train)

###2 # 
Extracts mean and standard deviation measurements from set, converts activities labels into factors and merge subject ids with activities and set (for mean and std only, "meanFreq" variables are treated as mean variables)
      
      data_set <- cbind(subject_merge, as.factor(activity_merge[,1]), set_merge[, grepl("mean|std", features$V2)])
          

###3 # 
Uses descriptive activity names to name the activities in the merged data set
      
      levels(data_set[,2]) <- activity_labels[,2]
      
      
###4 # 
Appropriately labels the data set with descriptive variable names.
      
      names(data_set) <- c("subject_id", "activity_label", grep("mean|std", features$V2, value=TRUE))
    
      
###5 # 
Aggrgate average of each variable by subject and activity 
     
     tidyData <- aggregate(. ~subject_id + activity_label, data_set, mean)
      #same as: aggregate(data_set[, 3:81], by = list(data_set$subject_id, data_set$activity_label), mean)
    
      
###6 # 
Save tidy Data as csv
      
      write.csv(tidyData, "tidyData.csv")
      
