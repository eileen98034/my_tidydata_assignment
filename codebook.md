Coursera Getting and Cleaning Data Course Project
Codebook for my_tidydata_assignment

The dataset for this project is called Human Activity Recognition Using Smartphones Data Set and was obtained here:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#.  The experiment used to gather the data include 30 volunteers broken into two groups:
1. 70% generating "training" data
2. 30% generating "test"data

The project requirement was to combine the "training" and "test" data into a single dataset, then make the file somewhat human readable by providing meaningful column names.  Also required was that only mean and standard deviation data be in the resultant set.  The resultant dataset is called my_tidydata.txt.  

Here is a description of the variables in the resulting dataset, my_tidydata.txt, afer processing with my R scripts called 'run_analysis.R':

Synopsis

Here is how run_analysis.R meets the five requirements for Coursera's Getting and Cleaning Data:

Requirement 1. Training and the test sets merged to create one data set using rbind();
Requirement 2. Only the measurements on the mean and standard deviation for each measurement are extracted using colnames() and cbind(). 
Requirement 3. Descriptive activity names for each activity in the data set were used using activity_labels<-read.table("activity_labels.txt")["V2"].
Requirement 4. Appropriate descriptive variable names used within the script (see below). 
Requirement 5: Created a second, independent tidy data set with the average of each variable for each activity and each subject using tidyset$Activity<-activity_labels[tidy$Activity,] and write.table(tidyset, file="./my_tidydata.txt", sep=",", row.names=FALSE).

Variables

features			variable to hold the x, y, and z coordinate accelerometer data (in seconds)
activity_labels		variable to hold the activity names (i.e. walking, sitting, laying, etc.)
X-train, Y-train	variables to hold the x and y coordinate accelerometer data from the training data set (in seconds)
X-test, Y-test		variables to hold the x and y coordinate accelerometer data from the test data set (in seconds)
x-test-subset		variable to hold test data once all but standard deviation and mean data was filtered out (in seconds)
x-train-subset		variable to hold training data once all but standard deviation and mean data was filtered out (in seconds)
Xy					variable to hold the combined, reduced data set (in seconds)
tidyset				variable to hold the resultant tidy data set (in seconds)









