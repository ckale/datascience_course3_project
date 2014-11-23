# Load test data set
test_labels <- read.table("./test/y_test.txt")
test_sets <- read.table("./test/X_test.txt")
test_subjects <- read.table("./test/subject_test.txt")
test_data <- cbind(test_subjects,test_labels,test_sets)

# Load training data set
train_labels <- read.table("./train/y_train.txt")
train_sets <- read.table("./train/X_train.txt")
train_subjects <- read.table("./train/subject_train.txt")
train_data <- cbind(train_subjects,train_labels,train_sets)

# Merge the two data sets
full_data <- rbind(test_data,train_data)

# Apply descriptive variable names for the columns
features <- read.table("./features.txt")
colnames(full_data) <- c("SubjectID","Activity",as.character(features[,2]))

# Apply descriptive activity names for the values in the Activity column
activity_labels <- read.table("./activity_labels.txt")
full_data$Activity = factor(full_data$Activity)
levels(full_data$Activity) <- as.character(activity_labels[,2])

# Extract just the mean and stddev measurements
mean_std_data <- full_data[,grepl("(SubjectID|Activity|(mean|std)[[:punct:]])",names(full_data))]

# Split the data based on SubjectID and Activity, then generate means for every type of measurement
split_data <- split(mean_std_data,list(mean_std_data$SubjectID,mean_std_data$Activity))
summarized_data <- t(sapply(split_data,function(x) { x <- x[,-which(names(x) %in% c("SubjectID","Activity"))] 
                                                   sapply(x,mean) }))
print(summarized_data)