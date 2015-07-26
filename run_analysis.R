library(plyr)

rm(list = ls())

###############################################################################
## Start-up - Download and extract the data
###############################################################################
dataset <- "getdata_dataset.zip"
base_dir <- "UCI HAR Dataset"

if (!file.exists(dataset)){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", dataset, method="curl")
}
if (!file.exists(base_dir)) { 
    unzip(dataset) 
}

###############################################################################
## (1) - Merge the training and test sets to create one data set
###############################################################################

# read train data
x_train         <- read.table(paste0(base_dir, "/train/X_train.txt"))
y_train         <- read.table(paste0(base_dir, "/train/y_train.txt"))
subject_train   <- read.table(paste0(base_dir, "/train/subject_train.txt"))

# read test data
x_test          <- read.table(paste0(base_dir, "/test/X_test.txt"))
y_test          <- read.table(paste0(base_dir, "/test/y_test.txt"))
subject_test    <- read.table(paste0(base_dir, "/test/subject_test.txt"))

# merge x, y and subject
x_data       <- rbind(x_train, x_test)
y_data       <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)


###############################################################################
## (2) - Extract only the measurements on the mean and sd for each measurement
###############################################################################

# read the column names
features <- read.table("UCI HAR Dataset/features.txt")

# get only the columns that have -mean() or -std() in their names
mean_stds <- grep("-(mean|std)\\(\\)", features[, 2])

# remove columns which are not mean or std
x_data <- x_data[, mean_stds]

# assign the column names 
names(x_data) <- features[mean_stds, 2]


###############################################################################
## (3) - Use descriptive activity names to name the activities in the data set
###############################################################################

# read activity labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# update values with correct activity name
y_data[, 1] <- activities[y_data[, 1], 2]

# change the column name to "activity"
names(y_data) <- "Activity"


###############################################################################
## (4) - Appropriately label the data set with descriptive variable names
###############################################################################

# correct column name for subjects
names(subject_data) <- "Subject"
# Remove parentheses from data
names(x_data)       <- gsub('\\(|\\)',"",names(x_data), perl = T)    
# Make syntactically valid names
names(x_data)       <- make.names(names(x_data))                        
# Make names descriptive
names(x_data)       <- gsub('Acc',"Acceleration",names(x_data))         
names(x_data)       <- gsub('Mag',"Magnitude",names(x_data))
names(x_data)       <- gsub('^t',"TimeDomain.",names(x_data))
names(x_data)       <- gsub('^f',"FrequencyDomain.",names(x_data))
names(x_data)       <- gsub('\\.mean',".Mean",names(x_data))
names(x_data)       <- gsub('\\.std',".StandardDeviation",names(x_data))
names(x_data)       <- gsub('Freq\\.',"Frequency.",names(x_data))
names(x_data)       <- gsub('Freq$',"Frequency",names(x_data))

# bind all the data in a single data set
combined_data <- cbind(x_data, y_data, subject_data)
write.csv(combined_data, file = "combined_data.csv", row.names = FALSE)


###############################################################################
## (5) - Create a second, independent tidy data set with the average of each 
##       variable for each activity and each subject
###############################################################################

# all columns except last two (activity & subject)
averages_data <- ddply(combined_data, .(Subject, Activity), function(x) colMeans(x[, 1:66]))
# write the table to file
write.table(averages_data, "avg_data.txt", row.name=FALSE)