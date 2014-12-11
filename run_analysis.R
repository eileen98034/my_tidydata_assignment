## run_analysis.R

## Here are the project requirements:
## You should create one R script called run_analysis.R that does the following. 
##
    ## Merges the training and the test sets to create one data set.
    ## Extracts only the measurements on the mean and standard deviation for each measurement. 
    ## Uses descriptive activity names to name the activities in the data set
    ## Appropriately labels the data set with descriptive variable names. 
    ## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Here is how I implemented the project requirements:
## read data in from the working directory
## source('c:/Users/emanton.HFP/Documents/My_R_Documents/Assignments/UCI_HAR_Dataset/')

## set working directory with access to all of the data
setwd("c:/Users/emanton.HFP/Documents/My_R_Documents/Assignments/UCI_HAR_Dataset/")

## read in the data describing features and descriptive activity names
features<-read.table("features.txt")["V2"]
activity_labels<-read.table("activity_labels.txt")["V2"]

## extract out the indices of columns corresponding to the mean and standard deviation data
indices_of_means_and_stds<-grep("mean|std",features$V2) 

## Requirement 4. Appropriately labels the data set with descriptive variable names. 
## Requirement 3. Use descriptive activity names to name the activities in the data set.
## organize the training data
setwd("train/")
X_train<-read.table("X_train.txt")
names(X_train)<-features$V2  
y_train<-read.table("y_train.txt")
names(y_train)<-names(y_train)<-"labels"
subject_train<-read.table("subject_train.txt")
names(subject_train)<-"subjects"
## organize the test data
setwd("../test/")
X_test<-read.table("X_test.txt")
names(X_test)<-features$V2
y_test<-read.table("y_test.txt")
names(y_test)<-"labels"
subject_test<-read.table("subject_test.txt")
names(subject_test)<-"subjects"
setwd("../")

## Requirement 2. Extract only the measurements on the mean and standard deviation for each measurement. 
means_and_std_colnames<-colnames(X_test)[indices_of_means_and_stds]
X_test_subset<-cbind(subject_test,y_test,subset(X_test,select=means_and_std_colnames))
X_train_subset<-cbind(subject_train,y_train,subset(X_train,select=means_and_std_colnames))

## Requirement 1. Merge the training and the test sets to create one data set.
Xy<-rbind(X_test_subset, X_train_subset)

## generate the tidy data set with averages of each measurement by activity and subject
tidyset<-aggregate(Xy[,3:ncol(Xy)],list(Subject=Xy$subjects, Activity=Xy$labels), mean)
tidyset<-tidyset[order(tidyset$Subject),]

## Requirement 5: Create a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyset$Activity<-activity_labels[tidy$Activity,]  
write.table(tidyset, file="./my_tidydata.txt", sep=",", row.names=FALSE)
