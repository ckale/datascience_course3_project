Getting and Cleaning Data : Course Project
==========================================

* Usage: to use the script, please use the following steps:
    1. Copy the script (run_analysis.R) over to the directory where the Samsung data is placed
       (the directory should contain the train/ and test/ directories, and the features.txt and
       activity_labels.txt files that the script reads from)
    2. In R, update the working directory to the one where the script is now placed (using setwd())
    3. In R, run source("run_analysis.R") to run the script (may take up to 30 seconds)

* Result: The script will create several objects in your workspace; the main ones are:
    1. mean_std_data : this is the first tidy data set created using steps 1-4 in the project description
    2. summarized_data : this is the second tidy data set created using steps 5 in the project description
    In the end, the script will print out the contents of summarized_data

* How the script works:
    1. read the pieces of data from the train/ and test/ directories and put them together using cbind()
    2. merge the two data sets using rbind()
    3. read the descriptive variables names from features.txt and apply them to the columns of the data frame
    4. read the activity labels from activity_labels.txt and apply them to the values in the Activity column
    5. extract just the columns for the mean and stddev measurements (mean_std_data)
    6. generate per-subject-activity means for each of the measured variables (summarized_data)

