---
title: "README"
author: Coursera Student - iChing688
date: "Monday, April 20, 2015"
---

Getting and Cleaning Data
=========================
This project is about processing data and proforming a data analysis on data collected from the accelerometers from the Samsung Galaxy S smartphone.  The goal of this project is to obtain, process, and clean a data set.  

The data set can be obtained from Machine Laraning Repository(UCI) website: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Detailed information about the data can be found in CodeBook.

There are five parts for this project, and they are scripted in run_analysis.R:  

1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.   
3. Uses descriptive activity names to name the activities in the data set  
4. Appropriately labels the data set with descriptive variable names.   
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.    

Part1 and part2 are used to combine test and training datasets, and extract only the meansurements we need for performing data analysis in Part5.  Part3 and part4 are used to properly label the dataset fromed in part1 and part2.

Part5 in run_analysis.R produces an analyzed tidy dataset. The dataset is created as a txt file with write.table() function with row.name=FALSE.




