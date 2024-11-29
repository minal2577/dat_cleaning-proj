# Load required libraries
library(dplyr)

# Download and unzip the dataset
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "./UCI_HAR_Dataset.zip"
download.file(url, destfile)
unzip(destfile)

# Read in the training and testing data
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Combine the training and testing data
combined_data <- rbind(train_data, test_data)
combined_labels <- rbind(train_labels, test_labels)
combined_subjects <- rbind(train_subjects, test_subjects)

# Read in the feature names
features <- read.table("./UCI HAR Dataset/features.txt")
mean_std_features <- grep("-(mean|std)\\(", features$V2)

# Subset the data to include only mean and std measurements
combined_data <- combined_data[, mean_std_features]

# Read in activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
combined_labels$V1 <- activity_labels[combined_labels$V1, 2]

# Assign descriptive column names
names(combined_data) <- features$V2[mean_std_features]

# Add subject and activity columns
combined_data$subject <- combined_subjects$V1
combined_data$activity <- combined_labels$V1

# Create the tidy data set with averages
tidy_data <- combined_data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# Write the tidy data to a file
write.table(tidy_data, "./tidy_data.txt", row.name = FALSE)
