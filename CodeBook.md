#Code Book

Output file includes 68 variables. 1 and 2 are IDs and 3 ~ 68 are numeric values and are the averages of each feature measurement by each activity and each subject id.

####Features
* Features are normalized and bounded within [-1,1]
* 'Acc' indicates data from the accelometer and 'Gyro' indicates data from gyroscope
* Prefix 't' denotes time and 'f' indicates frequency domain signal
* '_X', ,'_Y', and 'Z' is used to denote 3-axial signals in the X, Y and Z directions 
* 'mean' indicates data is Mean value and 'std' in Standard Diviation 
* Other words such as 'Body', 'Gravity', and 'Jerk' identify signals from the accelometer and gyroscope.
* For more information about meaning of each feature, please see features_info.txt from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
1. activity - descriptive activity name 
    - WALKING

    - WALKING_UPSTAIRS
 
    - WALKING_DOWNSTAIRS
    - SITTING
 STANDING
    - LAYING

2. subject_id - id number of volunteer 
    - 1 ~ 30
3. tBodyAcc_mean_X
4. tBodyAcc_mean_Y
5. tBodyAcc_mean_Z
6. tGravityAcc_mean_X
7. tGravityAcc_mean_Y
8. tGravityAcc_mean_Z
9. tBodyAccJerk_mean_X
10. tBodyAccJerk_mean_Y
11. tBodyAccJerk_mean_Z
12. tBodyGyro_mean_X
13. tBodyGyro_mean_Y
14. tBodyGyro_mean_Z
15. tBodyGyroJerk_mean_X
16. tBodyGyroJerk_mean_Y
17. tBodyGyroJerk_mean_Z
18. tBodyAccMag_mean
19. tGravityAccMag_mean
20. tBodyAccJerkMag_mean
21. tBodyGyroMag_mean
22. tBodyGyroJerkMag_mean
23. fBodyAcc_mean_X
24. fBodyAcc_mean_Y
25. fBodyAcc_mean_Z
26. fBodyAccJerk_mean_X
27. fBodyAccJerk_mean_Y
28. fBodyAccJerk_mean_Z
29. fBodyGyro_mean_X
30. fBodyGyro_mean_Y
31. fBodyGyro_mean_Z
32. fBodyAccMag_mean
33. fBodyBodyAccJerkMag_mean
34. fBodyBodyGyroMag_mean
35. fBodyBodyGyroJerkMag_mean
36. tBodyAcc_std_X
37. tBodyAcc_std_Y
38. tBodyAcc_std_Z
39. tGravityAcc_std_X
40. tGravityAcc_std_Y
41. tGravityAcc_std_Z
42. tBodyAccJerk_std_X
43. tBodyAccJerk_std_Y
44. tBodyAccJerk_std_Z
45. tBodyGyro_std_X
46. tBodyGyro_std_Y
47. tBodyGyro_std_Z
48. tBodyGyroJerk_std_X
49. tBodyGyroJerk_std_Y
50. tBodyGyroJerk_std_Z
51. tBodyAccMag_std
52. tGravityAccMag_std
53. tBodyAccJerkMag_std
54. tBodyGyroMag_std
55. tBodyGyroJerkMag_std
56. fBodyAcc_std_X
57. fBodyAcc_std_Y
58. fBodyAcc_std_Z
59. fBodyAccJerk_std_X
60. fBodyAccJerk_std_Y
61. fBodyAccJerk_std_Z
62. fBodyGyro_std_X
63. fBodyGyro_std_Y
64. fBodyGyro_std_Z
65. fBodyAccMag_std
66. fBodyBodyAccJerkMag_std
67. fBodyBodyGyroMag_std
68. fBodyBodyGyroJerkMag_std
