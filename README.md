# GETTING AND CLEANING DATA COURSE PROJECT

## This repository contains the following files:
		a. README.md  - which explains how the script works.
		b. run_analysis.R - the R script used to create a dataset.
		c. tidydata - which contains the tidy data set. 
		d  Codebook.md - which describes the contents of the data set.

### The data set used in this project is the "Human activity Recognition Using Smartphones Dataset" which is available here:
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR

### Full description of the data can be found here:
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### Generally, the script, "run_analysis.R", collects, works with cleans and prepares tidy data set which can be used in later analysis. Following are the detailed methods on how the script works:

	a. Download, extract and read the messy dataset.
	b. Merge the training and test data.
	c. Get only the mean and standard deviation for each measurement.
	d. Uses descriptive activity names to name the activities in the data set.
	e. Appropriately labels the data set with descriptive variable names
	f. Creates a tidy data set with the average of each variable for each activity and each subject.
