The data 
========
The data set was represented for Coursera Getting and Cleaning Data course project.  As it is stated in the assignment, “the data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip “

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The original data set included 3 types of data:
<p> 1)	information about activity (mentioned above 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  that were done by subjects wearing a smartphone (Samsung Galaxy S II) on the waist.  This information is posted in y_train.txt and y_test.txt files in the coded form (i.e. each activity is represented as a number), the relationship between numbers and  activity labels (i.e. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) is represented in activity_labels.txt </p>
<p> 2)	the index of each of 30 volunteers, that performed the activities is represented in subject_train.txt and subject_test.txt </p>
<p> 3)	information about measurements from smartphone is in  X_train.txt, X_test.txt, the names of this variables is in features.txt file. The measurements are displayed for each activity of each subject. </p>

The variables
========
In my data set there are two tables. One includes information about activity as an observational unit and average measurements for all variables from paragraph 3 above (and Appendix 1 of this CodeBook) for each type of the activity. The other  table includes information about subject as an observational unit and average measurements for all variables from paragraph 3 above (and Appendix 1 of this CodeBook) for each subject.
First table includes following variables:
<p>•	Subject – the number of a volunteer who participated in the experiment </p>
<p>•	Bunch of variables that are described in paragraph 3 and in appendix 1 of this codebook (in my table the same type of measurements (with the same names) are calculated for each subject as average number) </p>

Second table includes following variables:
<p>•	Activity – the type of the activity that was performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) </p>
<p>•	Bunch of variables that are described in paragraph 3 and in appendix 1 of this codebook (in my table the same type of measurements (with the same names) are calculated for each activity as average number) </p>

 Transformations and work that I performed to clean up the data
========
R script called run_analysis.R that does the following (but not in the following order):
<p> 1)	Merges the training and the test sets to create one data set. </p>
<p> 2)	Extracts only the measurements on the mean and standard deviation for each measurement. </p>
<p> 3)	Uses descriptive activity names to name the activities in the data set. </p>
<p> 4)	Appropriately labels the data set with descriptive variable names. </p>
<p> 5)	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. I consider subject and activity as two different types of observational units. According to Hadley Wickam's article on tidy data, we have to store observational units of different types in different tables (Tidy Data Hadley Wickham Journal of Statistical Software August 2014, Volume 59, Issue 10 https://www.google.ru/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjjtOzf59TOAhXCXCwKHZpnA7EQFggdMAA&url=https%3A%2F%2Fwww.jstatsoft.org%2Farticle%2Fview%2Fv059i10%2Fv59i10.pdf&usg=AFQjCNGJCmyjRW1EPmG-O4BZ6hnwfjxcxA&sig2=3pN5suQc89YjTTvPRFBbhg) so I split my dataset into 2 data tables. </p>
<p> 6)	Exports 2 tables into one txt file. </p>
I downloaded and unzipped files manually. The "submit your assignment” page says that "the code should have a file run_analysis.R in the main directory that <b> can be run as long as the Samsung data is in your working directory </b> ",  so it is not an error or drawback.
Pls see README.md for more information (README.md explains how all of the scripts work and how they are connected).


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
<p> mad(): Median absolute deviation </p> 
<p> max(): Largest value in array </p>
<p> min(): Smallest value in array </p>
<p> sma(): Signal magnitude area </p>
<p> energy(): Energy measure. Sum of the squares divided by the number of values. </p> 
<p> iqr(): Interquartile range </p>
<p> entropy(): Signal entropy </p>
<p> arCoeff(): Autorregresion coefficients with Burg order equal to 4 </p>
<p> correlation(): correlation coefficient between two signals </p>
<p> maxInds(): index of the frequency component with largest magnitude </p>
<p> meanFreq(): Weighted average of the frequency components to obtain a mean frequency </p>
<p> skewness(): skewness of the frequency domain signal </p>
<p> kurtosis(): kurtosis of the frequency domain signal </p>
<p> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window. </p>
<p> angle(): Angle between to vectors. </p>

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

