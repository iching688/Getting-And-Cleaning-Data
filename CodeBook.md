---
title: "CodeBook"
author: Coursera Student - iChing688
date: "Monday, April 20, 2015"
---

## Introduction
This project is about processing data and proforming a data analysis on data collected from the accelerometers from the Samsung Galaxy S smartphone.  

## Data
The data was collected from an experiments that were carried out with a group of 30 voluntters.  Each person persormed six activitties (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  The dataset was randomly partitioned into two sets: 70% of the subjects was selected for generating the training data and 30% the test data.

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

The data set can be obtained from Machine Laraning Repository(UCI) website: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Variables
The output file (TidyData.txt) produced from Part5 in run_analysis.R contains the followings:  

 [1] "Subject": the identifier of subject who carried out the experiment                                          
 [2] "Activity": the six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the test subjects.                                         
 [3] "TimeBodyAccelerometer-mean-X"                     
 [4] "TimeBodyAccelerometer-mean-Y"                     
 [5] "TimeBodyAccelerometer-mean-Z"                     
 [6] "TimeBodyAccelerometer-std-X"                      
 [7] "TimeBodyAccelerometer-std-Y"                      
 [8] "TimeBodyAccelerometer-std-Z"                      
 [9] "TimeGravityAccelerometer-mean-X"                  
[10] "TimeGravityAccelerometer-mean-Y"                  
[11] "TimeGravityAccelerometer-mean-Z"                  
[12] "TimeGravityAccelerometer-std-X"                   
[13] "TimeGravityAccelerometer-std-Y"                   
[14] "TimeGravityAccelerometer-std-Z"                   
[15] "TimeBodyAccelerometerJerk-mean-X"                 
[16] "TimeBodyAccelerometerJerk-mean-Y"                 
[17] "TimeBodyAccelerometerJerk-mean-Z"                 
[18] "TimeBodyAccelerometerJerk-std-X"                  
[19] "TimeBodyAccelerometerJerk-std-Y"                  
[20] "TimeBodyAccelerometerJerk-std-Z"                  
[21] "TimeBodyGyroscope-mean-X"                         
[22] "TimeBodyGyroscope-mean-Y"                         
[23] "TimeBodyGyroscope-mean-Z"                         
[24] "TimeBodyGyroscope-std-X"                          
[25] "TimeBodyGyroscope-std-Y"                          
[26] "TimeBodyGyroscope-std-Z"                          
[27] "TimeBodyGyroscopeJerk-mean-X"                     
[28] "TimeBodyGyroscopeJerk-mean-Y"                     
[29] "TimeBodyGyroscopeJerk-mean-Z"                     
[30] "TimeBodyGyroscopeJerk-std-X"                      
[31] "TimeBodyGyroscopeJerk-std-Y"                      
[32] "TimeBodyGyroscopeJerk-std-Z"                      
[33] "TimeBodyAccelerometerMagnitude-mean"              
[34] "TimeBodyAccelerometerMagnitude-std"               
[35] "TimeGravityAccelerometerMagnitude-mean"           
[36] "TimeGravityAccelerometerMagnitude-std"            
[37] "TimeBodyAccelerometerJerkMagnitude-mean"          
[38] "TimeBodyAccelerometerJerkMagnitude-std"           
[39] "TimeBodyGyroscopeMagnitude-mean"                  
[40] "TimeBodyGyroscopeMagnitude-std"                   
[41] "TimeBodyGyroscopeJerkMagnitude-mean"              
[42] "TimeBodyGyroscopeJerkMagnitude-std"               
[43] "FrequencyBodyAccelerometer-mean-X"                
[44] "FrequencyBodyAccelerometer-mean-Y"                
[45] "FrequencyBodyAccelerometer-mean-Z"                
[46] "FrequencyBodyAccelerometer-std-X"                 
[47] "FrequencyBodyAccelerometer-std-Y"                 
[48] "FrequencyBodyAccelerometer-std-Z"                 
[49] "FrequencyBodyAccelerometer-meanFreq-X"            
[50] "FrequencyBodyAccelerometer-meanFreq-Y"            
[51] "FrequencyBodyAccelerometer-meanFreq-Z"            
[52] "FrequencyBodyAccelerometerJerk-mean-X"            
[53] "FrequencyBodyAccelerometerJerk-mean-Y"            
[54] "FrequencyBodyAccelerometerJerk-mean-Z"            
[55] "FrequencyBodyAccelerometerJerk-std-X"             
[56] "FrequencyBodyAccelerometerJerk-std-Y"             
[57] "FrequencyBodyAccelerometerJerk-std-Z"             
[58] "FrequencyBodyAccelerometerJerk-meanFreq-X"        
[59] "FrequencyBodyAccelerometerJerk-meanFreq-Y"        
[60] "FrequencyBodyAccelerometerJerk-meanFreq-Z"        
[61] "FrequencyBodyGyroscope-mean-X"                    
[62] "FrequencyBodyGyroscope-mean-Y"                    
[63] "FrequencyBodyGyroscope-mean-Z"                    
[64] "FrequencyBodyGyroscope-std-X"                     
[65] "FrequencyBodyGyroscope-std-Y"                     
[66] "FrequencyBodyGyroscope-std-Z"                     
[67] "FrequencyBodyGyroscope-meanFreq-X"                
[68] "FrequencyBodyGyroscope-meanFreq-Y"                
[69] "FrequencyBodyGyroscope-meanFreq-Z"                
[70] "FrequencyBodyAccelerometerMagnitude-mean"         
[71] "FrequencyBodyAccelerometerMagnitude-std"          
[72] "FrequencyBodyAccelerometerMagnitude-meanFreq"     
[73] "FrequencyBodyAccelerometerJerkMagnitude-mean"     
[74] "FrequencyBodyAccelerometerJerkMagnitude-std"      
[75] "FrequencyBodyAccelerometerJerkMagnitude-meanFreq" 
[76] "FrequencyBodyGyroscopeMagnitude-mean"             
[77] "FrequencyBodyGyroscopeMagnitude-std"              
[78] "FrequencyBodyGyroscopeMagnitude-meanFreq"         
[79] "FrequencyBodyGyroscopeJerkMagnitude-mean"         
[80] "FrequencyBodyGyroscopeJerkMagnitude-std"          
[81] "FrequencyBodyGyroscopeJerkMagnitude-meanFreq"     
[82] "angle(TimeBodyAccelerometerMean,gravity)"         
[83] "angle(TimeBodyAccelerometerJerkMean),gravityMean)"
[84] "angle(TimeBodyGyroscopeMean,gravityMean)"         
[85] "angle(TimeBodyGyroscopeJerkMean,gravityMean)"     
[86] "angle(X,gravityMean)"                             
[87] "angle(Y,gravityMean)"                             
[88] "angle(Z,gravityMean)" 

### For variabbles [3]-[88]:  
- mean(): Mean value
- std(): Standard deviation
- Time... : Time domain
- Frequency... : Frequency domain
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.

## Transformation to clean up data
1. combine training and test data
2. extract only the measurements on the mean and standard deviation for each measurement for the purpose of performing data analysis in Part5
3. replace numeric value in Activity column with a more meaningful activity names
4. Assign meaningful column heading names
5. Perform analysis based on the requirement (average each variable for each activity and each subject), then sort the output file first by the subject ID, then by the activity.





