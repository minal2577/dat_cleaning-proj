# Data-Cleaning-Proj
Human Activity Recognition Using Smartphones - Tidy Data Project
This project is part of the Coursera Data Science specialization and aims to clean and prepare a dataset for later analysis. The dataset contains data from the accelerometers of the Samsung Galaxy S smartphone and consists of data about human activity.

Project Overview
The goal of this project is to:

Merge the training and test datasets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement.
Use descriptive activity names to name the activities in the dataset.
Appropriately label the dataset with descriptive variable names.
Create a second, independent tidy dataset with the average of each variable for each activity and each subject.
Files Included
run_analysis.R: The R script that performs all the steps required to process the data.
tidy_data.txt: The tidy dataset produced by the analysis. This dataset contains the average of each variable for each activity and subject.
CodeBook.md: A codebook that describes the variables in the dataset and any transformations applied to the data.
README.md: This file provides an overview of the project.
How to Run the Analysis
Download and Install Required Packages:

Make sure you have the following R packages installed: dplyr, tidyr.


install.packages("dplyr")
install.packages("tidyr")
Download the Dataset:

Download the dataset from the UCI website and unzip it.
Run the Script:

Run the run_analysis.R script. This script will download the dataset, perform the necessary transformations, and produce the tidy dataset tidy_data.txt.


source("run_analysis.R")
Output:

The script will generate a tidy dataset, tidy_data.txt, which contains the average of each variable for each activity and each subject.
The dataset can be opened in R or other text processing tools.
Explanation of the Analysis
The script:

Merges the training and testing datasets into one dataset for further analysis.
Extracts only the mean and standard deviation measurements by identifying variables that contain "mean" or "std" in their names.
Renames the activity IDs with descriptive activity names such as "WALKING", "STANDING", etc.
Labels the dataset with descriptive variable names to improve readability.
Creates a tidy dataset that contains the average of each variable for each subject and activity.
Conclusion
This project demonstrates the ability to clean and prepare data for analysis by:

Merging multiple datasets
Extracting meaningful features
Replacing IDs with descriptive names
Generating a tidy dataset that can be used for future analysis.
Feel free to review the provided CodeBook.md for more detailed information about the data and the transformations applied.
