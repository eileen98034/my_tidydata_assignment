my_tidydata_assignment
======================
Coursera Getting and Cleaning Data Course Project December 2014
The dataset, Human Activity Recognition Using Smartphones, was used for this exercise.  The data can be obtained from this website:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Summarized Data Set Information:
The experiments was conducted with a group of 30 volunteers between 19-48 years of age. Each person performed six activities while wearing a smartphone (Samsung Galaxy S II) on his/her waist:   

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments were video-recorded the data was manually labelled. The resulting raw dataset was randomly partitioned into two sets:

1. 70% training data  
2. 30% the test data

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 

The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 

From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
