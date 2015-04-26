
run_analysis <- function (path="UCI HAR Dataset") {
	#--- let's define some shortcuts to the source files of interest
	path.actifity_lables <- "/activity_labels.txt"
	path.features <- "/features.txt"

	path.x_train <- "/train/X_train.txt"
	path.y_train <- "/train/y_train.txt"
	path.subject_train <- "/train/subject_train.txt"

	path.x_test <- "/test/X_test.txt"
	path.y_test <- "/test/y_test.txt"
	path.subject_test <- "/test/subject_test.txt"

	### Step 1: Merges the training and the test sets to create one data set.
	#--- read and merge train and test data set
	df.train <- read.table(paste(path, path.x_train, sep=""))
	df.test <- read.table(paste(path, path.x_test, sep=""))
	df.all <- rbind(df.train, df.test)
	
	### Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
	#--- read the features, filter on relevance, use solumn index for reshaping data frame
	df.features <- read.table(paste(path, path.features, sep=""))
	df.features.stdAndMean <- df.features[grep ("-std\\(\\)|-mean\\(\\)", df.features$V2),]
	df.meanAndStd <- df.all[, df.features.stdAndMean$V1]

	### Step 3: Uses descriptive activity names to name the activities in the data set
	#--- read and merge train and test activity data sets (note: same order to be use as for the messurement data sets)
	df.train_activity <- read.table(paste(path, path.y_train, sep=""))
	df.test_activity <- read.table(paste(path, path.y_test, sep=""))
	df.activity<-rbind(df.train_activity, df.test_activity)

	#--- generate activities by lookup
	df.activity_lables <- read.table(paste(path, path.actifity_lables, sep=""))
	all.activities <- as.character(df.activity_lables[df.activity$V1,2])
	
	### Step 4: Appropriately labels the data set with descriptive variable names. 
	colnames(df.meanAndStd)[1:nrow(df.features.stdAndMean)] <-	as.character(df.features.stdAndMean$V2)

	###	Step 5:  From the data set in step 4, creates a second, independent tidy data set with the 
	### average of each variable for each activity and each subject.
	df.train_subject <- read.table(paste(path, path.subject_train, sep=""))
	df.test_subject <- read.table(paste(path, path.subject_test, sep=""))
	all.subject <- rbind(df.train_subject, df.test_subject)[,1]

	#--- group by
	df.result <- aggregate(df.meanAndStd, by=list(all.activities,all.subject), FUN=mean, na.rm=TRUE)
	colnames(df.result)[1] <- "activity"
	colnames(df.result)[2] <- "subject"
	
	# return the result
	df.result
}
