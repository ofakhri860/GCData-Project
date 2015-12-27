
#The Code Book:
##Index:
###Project Data
###Script Transformations
###Script Variables

####Project Data:

######Raw Data:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A study collected data from the accelerometers of 30 participants ranging from the ages of 19-48 years. Each volunteer performed the following activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING while wearing Samsung Galaxy S smartphones on their waist, which collected the data. The data collected was split into two sets: one dataset contains data from 70% of the volunteers which was allocated to training data and the other dataset contains the remaining 30% that were allocated to test data.

Additional information can be found here:

####Script Transformations:

The script run_analysis.R performs the 5 steps as described on the README.md and specifically executes in this order:

1. Datasets are merged with the function rbind().
2. Using grep() we extracted only the mean and standard deviation measurements from the dataset and the columns are given the correct names from features.txt via names().
3. From activity_labels.txt, we subsequently take the activity names and IDs and they are substituted in the dataset.
4. Corrected column names to their appropriate name. 
5. Lastly, we combine x, y, and subject datasets with cbind() into a new dataset with all the average measures for each subject and activity type. 

The output file tidy_data.txt is uploaded for submission and ddply() was used for the easement of manipulating the datasets.

####Script Variables:

* x_train, y_train, x_test, y_test, subject_train and subject_test are the original untouched data files.
* x_data, y_data and subject_data resulted in the merger of the data files from above.
* features file contained the corrected column names for the x_data dataset.
* activities file contained the same for the y_dataset.
* whole_data merges x, y, and subject datasets created and transformed previously into a combined dataset.
* tidy_data is a table generated from the whole_data dataset and filters the data so only the requested averages are present.
