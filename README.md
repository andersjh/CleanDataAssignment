# CleanDataAssignment
## Final Project for Coursera Getting and Cleaning Data Course

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

This repository contains two clean space deliminted data tables ready for futher analysis in addition to the R script used to create the files along with a CodeBook and Readme documention.  Files are:

- `README.md`, This file, general overview.
- `CodeBook.md`, Detailed descriptions of the clean tables and transformations required to create them.
- `full_data.txt`, full detail extracting mean and standard deviation measures from the raw data files.
- `tidy_data.txt`, which contains the data summarized by subject and activity with the mean calculated for each measure.
- `run_analysis.R`, the R script that was used to create the data sets.

Both the raw data and detailed explanations of all the measures can be found by downloading this [zip file](
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  At a very high level the data is collected for 30 individuals as they performed various activities:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING 

The subjects are broken down into groups *TEST* and *TRAIN*.

