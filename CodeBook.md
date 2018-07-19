# Clean Data Assignment Code Book
## Data Identifiers

###### subject
    Subject IDs.  Values from 1 to 30.
###### subject.type
    Group of the subject (TEST or TRAIN) - only in `full_data.txt`
###### activity
    Valid values are (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
    
## Data Measures (concatenate "-mean" to the measure title for tidy_data.txt) 
- tBodyAcc-mean()-X                   
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z                   
- tBodyAcc-std()-X
- tBodyAcc-std()-Y                    
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X                
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z                
- tGravityAcc-std()-X
- tGravityAcc-std()-Y                 
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X               
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z               
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y                
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X                  
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z                  
- tBodyGyro-std()-X
- tBodyGyro-std()-Y                   
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X              
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z              
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y               
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()                  
- tBodyAccMag-std()
- tGravityAccMag-mean()               
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()              
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()                 
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()             
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X                   
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z                   
- fBodyAcc-std()-X
- fBodyAcc-std()-Y                    
- fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X               
- fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z               
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y               
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X                
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z                
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y           
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X                  
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z                  
- fBodyGyro-std()-X
- fBodyGyro-std()-Y                   
- fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X              
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z              
- fBodyAccMag-mean()
- fBodyAccMag-std()                   
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()          
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()      
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()              
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()         
- fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()     
- angle(tBodyAccMean,gravity)
- angle(tBodyAccJerkMean),gravityMean)
- angle(tBodyGyroMean,gravityMean)
- angle(tBodyGyroJerkMean,gravityMean)
- angle(X,gravityMean)
- angle(Y,gravityMean)                
- angle(Z,gravityMean)                    

## Transformations
- all data files were read with read.table function
- feature and activity label tables dropped the first column as only the label was needed
- for both test and train data an subject.type column was created with the value "TEST" or "TRAIN"
- test and train subsets were created with only mean and std deviation measures
- test and train activity codes were replaced with actifity labels
- test and train data sets were merged to create `total_data.txt`
- subject.type was removed for summarised data as it's not needed
- the remaining set was grouped by subject and activity and the mean of every measure calulsted `tidy_data.txt`
