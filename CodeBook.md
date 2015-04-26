3) a code book that describes the variables, the data, and any transformations or work 
that you performed to clean up the data called CodeBook.md. 
You should also include a README.md in the repo with your scripts. 
This repo explains how all of the scripts work and how they are connected.


The script run_analysis.R contains one function called run_analysis. 
This function is intended to be used with a set of datasets which have to be in the same structure, 
files and subdirectories as described in 
It takes one argument 'path' this is the path to the data to be read and analyzed.

	#--- let's define some shortcuts to the source files of interest
	path.actifity_lables <- "/activity_labels.txt"
	path.features <- "/features.txt"

	path.x_train <- "/train/X_train.txt"
	path.y_train <- "/train/y_train.txt"
	path.subject_train <- "/train/subject_train.txt"

	path.x_test <- "/test/X_test.txt"
	path.y_test <- "/test/y_test.txt"
	path.subject_test <- "/test/subject_test.txt"

## function run_analysis (path="UCI HAR Dataset")
This function reads the files from the "UCI HAR Dataset", and performs the merging, reshaping and aggregation.

Args:
*	path: a character value which points to the path, where the extracted dataset can be found. This
		can either be an absolute or a relative path. If a relative path is being used, make sure that
		current working directory is the one you expect. The faufault is the relative path "UCI HAR Dataset".

Returns:
*	A data frame based on the original training and test data sets, reduced by the "std()" and "mean()" variables,
	grouped by the activity label and subject, agreegated by the mean of each variable (excluding the grouped by ones).
