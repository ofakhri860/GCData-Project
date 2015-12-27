## Setting the directory: "C:/DataSet/UCI HAR Dataset/"
setwd("C:/DataSet/UCI HAR Dataset/")
library(plyr)

## Step 1: Merge the training and the test sets to create one dataset.

# First read the tables in the .txt files
x_train <- read.table("C:/DataSet/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("C:/DataSet/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("C:/DataSet/UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("C:/DataSet/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("C:/DataSet/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("C:/DataSet/UCI HAR Dataset/test/subject_test.txt")

# Create the data sets x, y, and subject datasets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

## Step 2: Extract only the measurements on the mean and standard dev. for each measurement

features <- read.table("C:/DataSet/UCI HAR Dataset/features.txt")

# Filter the data without columns with mean() or std() in their names
features_mean_std <- grep("-(mean|std)\\(\\)", features[, 2])

# Subset the columns & update their names 
x_data <- x_data[, features_mean_std]
names(x_data) <- features[features_mean_std, 2]

## Step 3: Designate activity names for the activities in the data set

activity_labels <- read.table("C:/DataSet/UCI HAR Dataset/activity_labels.txt")

# Update values with the correct activity names
y_data[, 1] <- activity_labels[y_data[, 1], 2]

# Edit column name
names(y_data) <- "activity"

