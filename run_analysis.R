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
