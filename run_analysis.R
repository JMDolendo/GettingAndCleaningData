#Downloading the file

outdir <-"./proj_data.zip"
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = outdir)
unzip(zipfile = outdir ,exdir="./proj_data")

#Setting path directories
uchi_path <- "E:/Online Trainings/01_Data Science - PCIEERD/Modules/03_Getting_and_Cleaning_Data/proj_data/UCI HAR Dataset"
train_path <- "E:/Online Trainings/01_Data Science - PCIEERD/Modules/03_Getting_and_Cleaning_Data/proj_data/UCI HAR Dataset/train"
test_path <- "E:/Online Trainings/01_Data Science - PCIEERD/Modules/03_Getting_and_Cleaning_Data/proj_data/UCI HAR Dataset/test"

#Reading text files

feat_dat <- read.table(paste(uchi_path, "/features.txt", sep = ""),  header = FALSE)
Ytrain <- read.table(paste(train_path, "/Y_train.txt", sep = ""),  header = FALSE)
names(Ytrain) <- c("activityID")
Xtrain <- read.table(paste(train_path, "/X_train.txt", sep = ""),  header = FALSE)
names(Xtrain) <- feat_dat[,2]
subjtrain <-read.table(paste(train_path, "/subject_train.txt", sep = ""),  header = FALSE)
names(subjtrain) <- c("subjectID")

Ytest  <- read.table(paste(test_path, "/Y_test.txt", sep = ""),  header = FALSE)
names(Ytest)<- c("activityID")
Xtest  <- read.table(paste(test_path, "/X_test.txt", sep = ""),  header = FALSE)
names(Xtest) <- feat_dat[,2]
subjtest <-read.table(paste(test_path, "/subject_test.txt", sep = ""),  header = FALSE)
names(subjtest) <- c("subjectID")

#Merges the training and the test sets to create one data set
combined_data <- rbind(cbind(Xtrain, Ytrain, subjtrain), cbind(Xtest, Ytest, subjtest))


#Extracts only the measurements on the mean and standard deviation for each measurement
meanSTD_dat <- feat_dat[grep("mean\\(\\)|std\\(\\)",  feat_dat[,2]),]
meanSTD_select <- combined_data[,as.integer(c(meanSTD_dat[,1], 562,563))]

#Uses descriptive activity names to name the activities in the data set

act_label <- read.table(paste(uchi_path, "/activity_labels.txt", sep = ""),  header = FALSE)
names(act_label) <- c("activityID", "activityName")
meanSTD_actNames <- merge(meanSTD_select, act_label, by= "activityID")

#Appropriately labels the data set with descriptive variable names
names(meanSTD_actNames)<-gsub("^t", "time", names(meanSTD_actNames))
names(meanSTD_actNames)<-gsub("^f", "frequency", names(meanSTD_actNames))
names(meanSTD_actNames)<-gsub("Acc", "Accelerometer", names(meanSTD_actNames))
names(meanSTD_actNames)<-gsub("Gyro", "Gyroscope", names(meanSTD_actNames))
names(meanSTD_actNames)<-gsub("Mag", "Magnitude", names(meanSTD_actNames))
names(meanSTD_actNames)<-gsub("BodyBody", "Body", names(meanSTD_actNames))

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
mean_act_sub <- aggregate(. ~subjectID + activityName, meanSTD_actNames, mean)
mean_act_sub <- mean_act_sub[order(mean_act_sub$subjectID,mean_act_sub$activityName),]
write.table(mean_act_sub, "tidydata.txt", row.name=FALSE)
