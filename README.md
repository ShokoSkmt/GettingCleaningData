##run_analysis.R
run_analysis.R is to create tidy data set according to Course Project of Coursera "Getting and Cleaning Data".
The tidy data set is **Averages of feature measurements which are Mean or Standard Deviation values for each activity and each subject**.
run_analysis.R does the following 1 ~ 6 required tasks of Course Project.

###Required tasks of Course Project
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
6. Write the second tidy data set to TEXT file.

###Pre-required process to run_analysis.R from R console
* this run_analysis.R works under Windows OS ('\\\\' is Windows identifier to handle directory in R, under Mac or Linux you have to replace '\\\\' appropriately).
* run_analysis.R must be in working directory of R console.
* download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
* extract downloaded zip file in .\data (. is R working directory).
* rename directory name 'UCIHAR Dataset' to 'UCIHARDataset' to avoid the issue of handling directory name which has " "(space) in Windows OS.
* following data sets are supposed to create in R workspace by reading TEXT files.
    * **ft** data set :data from 'features.txt' (List of all features)
    * **at** data set :data from 'activity_labels.txt' (Links the class labels with their activity name)
    * **test_sj** data set :data from 'test\subject_test.txt' (Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30)
    * **test_x** data set :data from 'test\X_test.txt' (Test set)
    * **test_y** data set :data from 'test\y_test.txt' (Test labels)
    * **train_sj** data set :data from 'train\subject_train.txt' (Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30) 
    * **train_x** data set :data from 'train\X_train.txt': Training set.
    * **train_y** data set :data from 'train\y_train.txt': Training labels.

###Programming flow steps of run_analysis.R
1. combine test data of subject id, activity id, and feature measurements by column and combine train data of subject id, activity id, and features measurements by column. Then, combine test data set and train data set by row. (call data set created at this step 1 as **dataset1**, this rule applies at following steps)
2. create data set of column index of feature measurements and names of features which contain **mean()** or **std()**
3. from **dataset1**, extract only feature measurements which are in **dataset2**. And change column names to descriptive name using feature names of **dataset2**, but use '_' instead of '-' and get rid of '()' to avoid the operators in names.
4. create data set which has activity names instead of activity id in **dataset3** by merging activity data set to **dataset3**, then exclude activity id.
5. calculate average of each feature measurement of **dataset4** for each activity and each subject id using aggregate function.
6. write **dataset5** to TEXT file. 

###A TEXT file created by running run_analysis.R
* The result data set will be written and saved in ".\data\UCIHARDataset\average_mean_std_by_activity_subject.txt"
* " "(space) delimited
* text identifier is "(double quotation)
* no Header
* sorted by activity name and subject id
* see CodeBook.md, for explanation of variables.