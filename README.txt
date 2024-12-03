# Tidy Dataset Creation Script

This repository contains an R script that processes the "Human Activity Recognition Using Smartphones Dataset" to create a tidy dataset.

## How the Script Works

1. **Merges the training and test datasets**:
   - Reads the training and test datasets along with their labels and subject IDs.
   - Combines these datasets into a single unified dataset.

2. **Extracts Mean and Standard Deviation Measurements**:
   - Filters the dataset to include only variables that are means (`mean()`) or standard deviations (`std()`), along with activity and subject identifiers.

3. **Adds Descriptive Activity Names**:
   - Maps numeric activity IDs to descriptive activity names (e.g., WALKING, STANDING).

4. **Labels Variables with Descriptive Names**:
   - Renames variables for better clarity (e.g., `tBodyAcc-mean()-X` becomes `timeBodyAccelerometerMeanX`).

5. **Creates a Tidy Dataset**:
   - Groups data by subject and activity.
   - Calculates the average of each variable for each activity and subject.

6. **Saves the Tidy Dataset**:
   - Outputs the final tidy dataset to a file named `tidySet.txt`.
