########################################################################
#
# FILE
#    run_analysis.R
#
# OVERVIEW
#
#    This function cleans data for further study and analysis
#    Data files fall into 3 general categories:
#    1)  Global Data
#        a. activity_labels.txt - labels for activities
#        b. features.txt - labels for various feature measurements
#    2)  Test Data
#        a. test/subject.txt - subject IDs
#        b. test/y_test.txt - activity codes
#        c. test/X_test.txt - feature measurements
#    3)  Train Data
#        a. train/subject.txt - subject IDs
#        b. train/y_train.txt - activity codes
#        c. train/X_train.txt - feature measurements
#
#   This function extracts only mean and std feature measurements and combines 
#   test and train data into one data set (full_data.txt) which is then summarized
#   by subject and activity calculating the mean for each measurement (tidy_data.txt)
#
#

library(dplyr)


# clean and summarize study data for further analyis
run_analysis <- function(){
  
  #####################################################
  # load global information (applies to both test and train 
  #####################################################
  
  # load activity and strip first columns of numbers as it's not needed
  activity <- read.table("activity_labels.txt", stringsAsFactors=F)
  activity <- activity[,2]
  
  # load the feature labels and strip the first column as it's not needed
  features <- read.table("features.txt", stringsAsFactors=F)
  features <- features[,2]
  
  # capture only features that measure mean / std
  featureList <- grep("mean()|std()|Mean", features)
  
  #####################################################
  # load and process test information  
  #####################################################  
  
  # process test files
  testActivity <- read.table("test/y_test.txt")
  testSubjects <- read.table("test/subject_test.txt")
  testData <- read.table("test/X_test.txt")
  
  # create vector to use to identify test subjects 
  testType = rep(c("TEST"), nrow(testActivity))
  
  # convert the activity code to the value
  testActivity <- lapply(testActivity, function(x) as.character(activity[x]))
  
  #extract only mean and std data
  testData <- testData[,featureList]
  
  #assemble new table and add headings
  cleanTestData = cbind(testSubjects, testType, testActivity, testData)
  colnames(cleanTestData) = c("subject", "subject.type", "activity", features[featureList])

  #####################################################
  # load and process train information  
  #####################################################    
    
  # process train files
  trainActivity <- read.table("train/y_train.txt")
  trainSubjects <- read.table("train/subject_train.txt")
  trainData <- read.table("train/X_train.txt")
  
  # create "train" vector to identify train subjects 
  trainType = rep(c("TRAIN"), nrow(trainActivity))  
  
  
  # convert the activity code to the value
  trainActivity <- lapply(trainActivity, function(x) as.character(activity[x]))
  
  #extract only mean and std data
  trainData <- trainData[,featureList]
  
  #assemble new table and add headings
  cleanTrainData <- cbind(trainSubjects, trainType, trainActivity, trainData)
  colnames(cleanTrainData) <- c("subject", "subject.type", "activity", features[featureList])
  
  #####################################################
  # combine test and train data  
  #####################################################   
  
  cleanData <- rbind(cleanTestData, cleanTrainData)
  
  write.table(cleanData, "full_data.txt")
  
  #####################################################
  # create summary file that is the mean of all measures
  # by subject / activity
  #####################################################    
  
  cleanData$subject.type <- NULL

  # enable dplyr and summarise data
  tidyDataDetail <- tbl_df(cleanData)
  tidyData <- tidyDataDetail %>% group_by(subject, activity) %>% summarise_all(mean)  
  
  # create new label by adding "-mean" to end of existing measures
  featureMeans = lapply(features[featureList], function(x) paste(x, "-mean"))
  
  # apply new names
  colnames(tidyData) <- c("subject", "activity", featureMeans)

  write.table(tidyData, "tidy_data.txt")

  print("files full_data.txt and tidy_data.txt have been created!")
  
  
  
}    