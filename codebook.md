Codebook for Course Project
============================

(Note: this applies to the mean_std_data data frame generated
by the run_analysis.R script)

* Common qualifiers:
1. prefix of 't' implies measurement is in time domain
2. prefix of 'f' implies measurement is in freq domain
3. suffix of '-mean()' implies value is a mean
4. suffix of '-std()' implies value is a standard deviation
5. suffix of '-XYZ' implies there are three separate fields for measurements along X, Y and Z axes
6. presence of 'Mag' term implies the measurement is a magnitude
7. presence of 'Jerk' term implies the measurement is a derivative

* Field: SubjectID
>* Description: An identifier of the subject who carried out the experiment 
>* Data Type: Integer 

* Field: Activity
>* Description: Enumeration of 6 activity types (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
>* Data Type: Enumeration (Integer)

* Field:  BodyAcc (see 'Common Qualifiers' note)
>* Description: Body acceleration
>* Data Type: Floating-point

* Field:  GravityAcc (see 'Common Qualifiers' note)
>* Description: Gravity acceleration
>* Data Type: Floating-point

* Field:  BodyGyro (see 'Common Qualifiers' note)
>* Description: Body angular velocity
>* Data Type: Floating-point
