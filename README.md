## Accelerometers Data Project
####Course Project:

The purpose of this README.md is to give a brief description of this project, its goals and to briefly describe the script and its function towards the dataset.

This project is an exercise to demonstrate my ability to collect, work with, and clean a dataset. I have prepared a tidy data that can be used for later analysis. This repo will contain a code book which describes the variables, the data, and any transformations or work that I performed to clean up the dataset, its called CodeBook.md. 

####Background:

"One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:"* 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#####Addtional information found in CodeBook.md

####Script:
Using Rstudio I created a script called run_analysis.R which maniuplated and tidied up the dataset in order to meet the project goals. The script executes in this following order:

1. Merged the training and the test sets to create one dataset.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Designated descriptive activity names for the activities in the dataset.
4. Labeled the dataset with descriptive variable names. 
5. Created an independent second dataset with the average of each variable for each activity and each subject.

*Source: https://class.coursera.org/getdata-035/human_grading/view/courses/975119/assessments/3/submissions
