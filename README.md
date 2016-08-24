This repository contains my answer for the Coursera Getting and Cleaning data course project.
According to the assignment, 
========
I should  create one R script called run_analysis.R that does the following:
<p> •	Merges the training and the test sets to create one data set. </p>
<p> •	Extracts only the measurements on the mean and standard deviation for each measurement. </p>
<p> •	Uses descriptive activity names to name the activities in the data set. </p>
<p> •	Appropriately labels the data set with descriptive variable names. </p>
<p> •	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. </p>
Work done.
========
I completed all 5 steps mentioned above, but in another order.
<p> Preliminary work. </p> 
I downloaded and unzipped files manually. The "submit your assignment” page says that "the code should have a file run_analysis.R in the main directory that <i> can be run as long as the Samsung data is in your working directory </i> ",  so it is not an error or drawback. 
<p> Run_analysis. R </p> 
<p>  1.  The code in Run_analysis. R merges corresponding  data sets: </p>
<p>   - with labels of activity names for test and train into data set “y” </p>
<p>   - with test and train subjects into data set “subj” </p>
<p>   - with measured by smartphone variables into “x” </p>
<p>   2. Replaces labels of activity names (encoded as numbers) with activity names </p>
<p>   3. Adds names of columns in the "x" data set using features.txt file </p>
<p>   4. Unites Unite "subject", "activity", and "x" </p>
<p>   5. Extracts only the measurements on the mean and standard deviation for each measurement </p>
<p>   6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. I consider subject and activity as two different types of observational units.  </p> According to Hadley Wickam's article on tidy data, we have to store observational units of different types in different tables (Tidy Data Hadley Wickham Journal of Statistical Software August 2014, Volume 59, Issue 10  https://www.jstatsoft.org/article/view/v059i10), so I split my dataset into 2 data tables. As source data set I used “main” (that contains all variables), not mean_and_std one. The assignment says that the code has to extract “only the measurements on the mean and standard deviation for each measurement”, but it doesn’t say that we have to work with only the measurements on the mean and standard deviation all the way. As this part of assignment could be interpreted in different ways, I decided to prepare data table based on all measured variables, not only mean and standard deviation.
 <p>   7. Write result to a txt file. </p>
I can't write 2 tables in one txt file, so I have to merge them. To do this I add column "activity" to "tidy_subj" with all values "not_applicable" and column "subject" to "tidy_activity" it doesn't look tidy if you regard it as one table, but there are 2 tables and each of them is tidy. 
