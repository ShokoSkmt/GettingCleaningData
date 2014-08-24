##run_analysis.R

library(data.table)
library(plyr)

## 1.Merges the training and the test sets to create one data set.
## combine subject id, activity id and test data by column
test_data <- cbind(test_sj, test_y, test_x)
## combine subject id, activity id and train data by column
train_data <- cbind(train_sj, train_y, train_x)
## combine test and traind data by row
alldata <- rbind(test_data, train_data)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement.
## get only include mean() or std() from ft data frame (feature name)
ft_mean_std <- rbind(ft[grep("mean()", ft$feature, fixed=TRUE),],ft[grep("std()", ft$feature, fixed=TRUE),])

## initially set mydata only with activity_id and subject_id columns  
## combine mean() or std() variable column to mydata using for loop
## 4.Appropriately labels the data set with descriptive variable names. 
## also inside for loop set meaningfull column name
## use feature name and change '-' to '_' and get rid of '()' not to use operator
mydata <- as.data.table(alldata[,c(1,2)])
irow <- nrow(ft_mean_std)
for(i in 1:irow) {
  ii <- ft_mean_std[i,1] + 2
  mydata <- cbind(mydata, alldata[,ii])
  wname <- gsub("-", "_", ft_mean_std[i,2], fixed=TRUE)
  wname <- gsub("()", "", wname, fixed=TRUE)
  setnames(mydata, i+2, wname)
}

## 3.Uses descriptive activity names to name the activities in the data set
at <- as.data.table(at)
## merge activity name
setkey(at, activity_id)
setkey(mydata, activity_id)
dfmydata <- as.data.frame(merge(mydata, at))
## get rid of activity_id and change order of columns -> activity, subject_id, then mean() or std() values
nn <- ncol(dfmydata)
mydata <- dfmydata[ names(dfmydata)[c(nn, 2:(nn-1))]]

## 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject
## calculate average of each valriable using aggregate function by each activity and each subject_id
  wv <- aggregate(mydata[3:(irow+2)], by = list(activity=mydata$activity, subject_id=mydata$subject_id), FUN=mean, na.rm=TRUE)  
  fmydata <- wv[ order(as.character(wv[,1]), as.numeric(wv[,2])), ]

## Export data set to TEXT file
write.table(fmydata, ".\\data\\UCIHARDataset\\average_mean_std_by_activity_subject.txt", row.names = FALSE, col.names=FALSE)
