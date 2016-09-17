#clean up environment
rm(list = ls())

#I downloaded and unzipped files manually. 

#download "test" set into R
test_y <- read.table(file=".\\UCI HAR Dataset\\test\\y_test.txt",
                     header=FALSE)
test_subj <- read.table(file=".\\UCI HAR Dataset\\test\\subject_test.txt",
                        header=FALSE)
test_x <- read.table(file=".\\UCI HAR Dataset\\test\\X_test.txt",
                     header=FALSE)

#download "train" sets into R
train_y <- read.table(file=".\\UCI HAR Dataset\\train\\y_train.txt",
                      header=FALSE)
train_subj <- read.table(file=".\\UCI HAR Dataset\\train\\subject_train.txt",
                         header=FALSE)
train_x <- read.table(file=".\\UCI HAR Dataset\\train\\X_train.txt",
                      header=FALSE)

# Merge the training and the test sets to create one data set (paragraph 1 of the assignment).
y <- rbind(train_y, test_y)
subj <- rbind(train_subj, test_subj)
x <- rbind(train_x, test_x)

# Replace labels with activity names (paragraph 3 of the assignment).
 
activity <- read.table("C:\\R\\peer grading\\UCI HAR Dataset\\activity_labels.txt")
y_dfr <-  as.data.frame(y)
y_dfr$id <- 1:nrow(y_dfr)
addit_activity <- merge(y_dfr, activity,  by.x="V1", by.y="V1",all=TRUE)
addit_activity <- addit_activity [order(addit_activity $id), ]
activity_col <- addit_activity$V2

# Add names of columns in the "x" data set (paragraph 4 of the assignment)

features <- read.table("C:\\R\\peer grading\\UCI HAR Dataset\\features.txt")
features <- features$V2
colnames(x) <- features

# Unite "subject", "activity", and "x" (paragraph 1 of the assignment).

main <- cbind(subj, activity_col, x)
colnames(main)[colnames(main)=="V1"] <- "subject"
colnames(main)[colnames(main)=="activity_col"] <- "activity"

# Extract only the measurements on the mean and standard deviation for each measurement
  #(paragraph 2 of the assignment).

df1 <- grep("subject|activity|mean|std", colnames(main), value=TRUE)
main <-subset(main, select=df1)

# Create a second, independent tidy data set with the average of each variable for 
  #each activity and each subject (paragraph 5 of the assignment).
  #I consider subject and activity as two different types of observational units. 
  #According to Hadley Wickam's article on tidy data, 
  #we have to store observational units of different types in different tables
  #(Tidy Data Hadley Wickham Journal of Statistical Software August 2014, Volume 59, Issue 10 
  #https://www.google.ru/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjjtOzf59TOAhXCXCwKHZpnA7EQFggdMAA&url=https%3A%2F%2Fwww.jstatsoft.org%2Farticle%2Fview%2Fv059i10%2Fv59i10.pdf&usg=AFQjCNGJCmyjRW1EPmG-O4BZ6hnwfjxcxA&sig2=3pN5suQc89YjTTvPRFBbhg)
  #so I split my dataset into 2 data tables. 

library(data.table)
library(dplyr)
main <- as.data.table(main)

  ##create table where subject is observational unit
main_by_subject <- main
main_by_subject$activity <- NULL

 ##create table where activity is observational unit
main_by_activity <- main
main_by_activity$subject <- NULL

  ##create 2 tables (for 2 different types of observational units) with mean for each variable
    ##and each observational unit
tidy_subj <- main_by_subject %>% group_by(subject) %>% summarise_each(funs(mean))
tidy_activity <- main_by_activity %>% group_by(activity) %>% summarise_each(funs(mean))

 ## Write result to a txt file. I can't write 2 tables in one txt file, 
    ##so I have to merge them. To do this I add column "activity" to 
    ##"tidy_subj" with all values "not_applicable" and column "subject" to "tidy_activity"
    ##it doesn't look tidy if you regard it as one table, but there are 2 tables and each of them is tidy.
    ##As you can read above and in README.md, I have to prepare 2 data tables (each for one type of 
    ##observational unit)  

tidy_subj$activity <- "not_applicable"
tidy_activity$subject <- "not_applicable"
tidy_two_tbls_in_one <- rbind(tidy_subj, tidy_activity)
write.table(tidy_two_tbls_in_one, file = "./tidy.txt", row.name=FALSE)


