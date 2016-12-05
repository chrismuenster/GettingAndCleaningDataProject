##setwd("\\\\sfberxx6514.eur.corp.vattenfall.com/cmuenster$/Documents/R/03 Getting and Cleaning Data/Assignment")

# 0 # Download, unzip and read in data
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


      
# 1 # Merges the training and the test sets/activity label/subject ids to create one data set.
      # sets
      set_merge <- rbind(set_test, set_train)
      
      # activity labels
      activity_merge <- rbind(activity_test, activity_train)
      
      # subject ids
      subject_merge <- rbind(subject_test, subject_train)
      
      
      
# 2 # Extracts mean and standard deviation measurements from set. 
      data_set <- cbind(subject_merge, as.factor(activity_merge[,1]), set_merge[, grepl("mean|std", features$V2)])
          

# 3 # Uses activity names to name the activities in the merged data set
      levels(data_set[,2]) <- activity_labels[,2]
      
      
# 4 # Appropriately labels the data set with descriptive variable names.
      names(data_set) <- c("subject_id", "activity_label", grep("mean|std", features$V2, value=TRUE))
    
      
# 5 # Aggrgate average of each variable by subject and activity 
      tidyData <- aggregate(. ~subject_id + activity_label, data_set, mean)
      #same as: head(aggregate(data_set[, 3:81], by = list(data_set$subject_id, data_set$activity_label), mean))
    
      
# 6 # Write Data
      write.csv(tidyData, "tidyData.csv")
      
