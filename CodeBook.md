## HUMAN ACTIVITY RECOGNITION USING SMARTPHONES DATASET (CODE BOOK)

### DESCRIPTION: This is a DATA DICTIONARY of the variables stored in "tidydata.txt"


- subjectID
  - Subject who performed the activity for each window sample. Its range is from 1 to 30.

- activityName
  - Activities performed by each person wearing a smartphone (Samsung Galaxy S II) on waist. These include LAYING, SITTING, STANDING, WALKING, WALKING DOWNSTAIRS and WALKING UPSTAIRS. 
						
- activityID
  - Unique identifier of each activities performed wearing a smartphone. 
    - 1	-	WALKING
    - 2	- 	WALKING UPSTAIRS
    - 3	-	WALKING DOWNSTAIRS
    - 4	-	SITTING
    - 5	-	STANDING
    - 6	-	LAYING

### TIME DOMAIN SIGNALS

- BODY acceleration signal in X, Y and Z Directions

  - from ACCELEROMETER
    - Mean
      - timeBodyAccelerometer-mean()-X
      - timeBodyAccelerometer-mean()-Y
      - timeBodyAccelerometer-mean()-Z

    - Standard Deviation
      - timeBodyAccelerometer-std()-X
      - timeBodyAccelerometer-std()-Y
      - timeBodyAccelerometer-std()-Z

  - from GYROSCOPE
    - Mean
      - timeBodyGyroscope-mean()-X
      - timeBodyGyroscope-mean()-Y
      - timeBodyGyroscope-mean()-Z

    - Standard Deviation
      - timeBodyGyroscope-std()-X
      - timeBodyGyroscope-std()-Y
      - timeBodyGyroscope-std()-Z


- GRAVITY acceleration signal in X, Y and Z Directions

  - from ACCELEROMETER
    - Mean
      - timeGravityAccelerometer-mean()-X
      - timeGravityAccelerometer-mean()-Y
      - timeGravityAccelerometer-mean()-Z
  
    - Standard Deviation
      - timeGravityAccelerometer-std()-X
      - timeGravityAccelerometer-std()-Y
      - timeGravityAccelerometer-std()-Z

- Jerk Signals derived from BODY linear acceleration and angular velocity in X, Y and Z Directions
  
  - from ACCELEROMETER
    - Mean
      - timeBodyAccelerometerJerk-mean()-X
      - timeBodyAccelerometerJerk-mean()-Y
      - timeBodyAccelerometerJerk-mean()-Z

    - Standard Deviation
      - timeBodyAccelerometerJerk-std()-X
      - timeBodyAccelerometerJerk-std()-Y
      - timeBodyAccelerometerJerk-std()-Z

  - from GYROSCOPE
    - Mean
      - timeBodyGyroscopeJerk-mean()-X
      - timeBodyGyroscopeJerk-mean()-Y
      - timeBodyGyroscopeJerk-mean()-Z

    - Standard Deviation
      - timeBodyGyroscopeJerk-std()-X
      - timeBodyGyroscopeJerk-std()-Y
      - timeBodyGyroscopeJerk-std()-Z

- Magnitude of BODY acceleration and angular velocity three-dimensional signals calculated using Euclidean norm

  - from ACCELEROMETER
    - Mean
      - timeBodyAccelerometerMagnitude-mean()
      - timeBodyAccelerometerJerkMagnitude-mean()

    - Standard Deviation
      - timeBodyAccelerometerMagnitude-std()
      - timeBodyAccelerometerJerkMagnitude-std()

  - from GYROSCOPE
    - Mean
      - timeBodyGyroscopeMagnitude-mean()
      - timeBodyGyroscopeJerkMagnitude-mean()

    - Standard Deviation
      - timeBodyGyroscopeMagnitude-std()
      - timeBodyGyroscopeJerkMagnitude-std()

- Magnitude of GRAVITY acceleration and angular velocity three-dimensional signals calculated using Euclidean norm

  - from ACCELEROMETER
    - Mean
      - timeGravityAccelerometerMagnitude-mean()

    - Standard Deviation
      - timeGravityAccelerometerMagnitude-std()


### FREQUENCY DOMAIN SIGNALS

- BODY acceleration signal in X, Y and Z Directions

  - from ACCELEROMETER
    - Mean
      - frequencyBodyAccelerometer-mean()-X
      - frequencyBodyAccelerometer-mean()-Y
      - frequencyBodyAccelerometer-mean()-Z

    - Standard Deviation
      - frequencyBodyAccelerometer-std()-X
      - frequencyBodyAccelerometer-std()-Y
      - frequencyBodyAccelerometer-std()-Z

  - from GYROSCOPE
    - Mean
      - frequencyBodyGyroscope-mean()-X
      - frequencyBodyGyroscope-mean()-Y
      - frequencyBodyGyroscope-mean()-Z

    - Standard Deviation
      - frequencyBodyGyroscope-std()-X
      - frequencyBodyGyroscope-std()-Y
      - frequencyBodyGyroscope-std()-Z


- Jerk Signals derived from BODY linear acceleration and angular velocity in X, Y and Z Directions
  
  - from ACCELEROMETER
    - Mean
      - frequencyBodyAccelerometerJerk-mean()-X
      - frequencyBodyAccelerometerJerk-mean()-Y
      - frequencyBodyAccelerometerJerk-mean()-Z

    - Standard Deviation
      - frequencyBodyAccelerometerJerk-std()-X
      - frequencyBodyAccelerometerJerk-std()-Y
      - frequencyBodyAccelerometerJerk-std()-Z

- Magnitude of three-dimensional signals calculated using Euclidean norm

  - from ACCELEROMETER
    - Mean
      - frequencyBodyAccelerometerMagnitude-mean()
      - frequencyBodyAccelerometerJerkMagnitude-mean()

    - Standard Deviation
      - frequencyBodyAccelerometerMagnitude-std()
      - frequencyBodyAccelerometerJerkMagnitude-std()

  - from GYROSCOPE
    - Mean
      - frequencyBodyGyroscopeMagnitude-mean()
      - frequencyBodyGyroscopeJerkMagnitude-mean()

    - Standard Deviation
      - frequencyBodyGyroscopeMagnitude-std()
      - frequencyBodyGyroscopeJerkMagnitude-std()

 
