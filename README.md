##run_analysis.R
run_analysis.R is to create tidy data set according to Course Project of Coursera "Getting and Cleaning Data" cource
run_analysis.R does the following 1 ~ 6 tasks.

###Required tasks
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
6. Write the second tidy data set to TEXT file.

###Pre-required process to run_analysis.R from R Studio or RGui
* this run_analysis.R works under Windows OS ('\\\\' is Windows identifier to handle directory in R, Mac or Linux version has to replace '\\\\' appropreately)
* run_analysis.R is in working directory of R Studio or RGui

* data download from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* downloaded zip file is extracted in .\data (. is R work directory)
* rename directory name 'UCIHAR Dataset' to 'UCIHARDataset' to avoid the issue of handling directory name which has ' '(space) in Windows OS
* following data frames is in R workspace by reading TEXT files

* **ft** data frame:data from 'features.txt' (List of all features)
* **at** data frame:data from 'activity_labels.txt' (Links the class labels with their activity name)

* **test_sj** data frame:data from 'test\subject_test.txt' (Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30)
* **test_x** data frame :data from 'test\X_test.txt' (Test set)
* **test_y** data frame :data from 'test\y_test.txt' (Test labels)
* **train_sj** data frame:data from 'train\subject_train.txt' (Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30) 
* **train_x** data frame :data from 'train\X_train.txt': Training set.
* **train_y** data frame :data from 'train\y_train.txt': Training labels.

###A TEXT file of the result will be created after running run_analysis.R
* file name is ".\data\UCIHARDataset\average_mean_std_by_activity_subject.txt"
* " "(space) delimitted
* text identifier is "(double quatation)
* no Header
* sorted by activity name and subject id
* see codebook, for explanation of variables.