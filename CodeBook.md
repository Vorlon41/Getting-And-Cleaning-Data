# Codebook for Tidy Dataset

This codebook describes the variables in the tidy dataset created by the script `run_analysis.R`.

## Variables

### Identifiers
- `subjectID`: Identifier for the subject who performed the activity (1-30).
- `activityID`: Numeric identifier for the activity (1-6).
- `activityType`: Descriptive name for the activity:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

### Measurements
The following measurements are included in the tidy dataset. Each measurement represents the average of the variable for each activity and subject.

#### Time Domain Variables
- `timeBodyAccelerometerMeanX`, `timeBodyAccelerometerMeanY`, `timeBodyAccelerometerMeanZ`: Mean of body acceleration signals in the X, Y, and Z directions.
- `timeBodyAccelerometerStdX`, `timeBodyAccelerometerStdY`, `timeBodyAccelerometerStdZ`: Standard deviation of body acceleration signals in the X, Y, and Z directions.
- Other similar variables include signals from the gyroscope, jerk signals, and magnitude values.

#### Frequency Domain Variables
- `frequencyBodyAccelerometerMeanX`, `frequencyBodyAccelerometerMeanY`, `frequencyBodyAccelerometerMeanZ`: Mean of body acceleration signals in the X, Y, and Z directions (frequency domain).
- Other similar variables include signals from jerk signals and gyroscope.

## Transformations
1. Raw data was normalized and bounded within [-1,1].
2. Variables with `mean()` or `std()` were selected for analysis.
3. Activity IDs were replaced with descriptive names.
4. Variable names were cleaned to be more descriptive.
