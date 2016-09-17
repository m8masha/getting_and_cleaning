The data 
========
The data set was represented for Coursera Getting and Cleaning Data course project.  As it is stated in the assignment, “the data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip “

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The variables
========
In my final file there are two tables. One includes information about activity as an observational unit and average measurements for all variables from paragraph 3 above (and Appendix 1 of this CodeBook) for each type of the activity. The other  table includes information about subject as an observational unit and average measurements for all variables from paragraph 3 above (and Appendix 1 of this CodeBook) for each subject.
First table includes following variables:
<p>•	Subject – the number of a volunteer who participated in the experiment </p>
<p>•	Bunch of variables that are described in paragraph 3 and in appendix 1 of this codebook (in my table the same type of measurements (with the same names) are calculated for each subject as average number) </p>

Second table includes following variables:
<p>•	Activity – the type of the activity that was performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) </p>
<p>•	Bunch of variables that are described in  in appendix 1 of this codebook (in my table the same type of measurements (with the same names) are calculated for each activity as average number) </p>

 
Appendix 1 
========
The original data set includes information  about features from “ the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
<p> tBodyAcc-XYZ </p>
<p> tGravityAcc-XYZ </p>
<p> tBodyAccJerk-XYZ </p>
<p> tBodyGyro-XYZ </p>
<p> tBodyGyroJerk-XYZ </p>
<p> tBodyAccMag </p>
<p> tGravityAccMag </p>
<p> tBodyAccJerkMag </p>
<p> tBodyGyroMag </p>
<p> tBodyGyroJerkMag </p>
<p> fBodyAcc-XYZ </p>
<p> fBodyAccJerk-XYZ </p>
<p> fBodyGyro-XYZ </p>
<p> fBodyAccMag </p>
<p> fBodyAccJerkMag </p>
<p> fBodyGyroMag </p>
<p> fBodyGyroJerkMag </p>

The set of variables that were estimated from these signals are: 
<p> mean(): Mean value </p>
<p> std(): Standard deviation </p>

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

<p> gravityMean </p>
<p> tBodyAccMean </p>
<p> tBodyAccJerkMean </p>
<p> tBodyGyroMean </p>
<p> tBodyGyroJerkMean” [1] </p>


<i> License: </i> 

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

