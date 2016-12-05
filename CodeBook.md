# Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


# Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.


# Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# Variable list and properties

|variable                        |class              |levels                                                   |examples                                                          |
|:-------------------------------|:------------------|:--------------------------------------------------------|:-----------------------------------------------------------------|
|subject_id                      |integer            |NA                                                       |1, 2, 3, 4, ...                                                   |
|activity_label                  |Factor w/ 6 levels |"WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", ... |"WALKING", "WALKING", "WALKING", "WALKING", ...                   |
|tBodyAcc-mean()-X               |numeric            |NA                                                       |0.277330758736842, 0.276426586440678, 0.275567462068966, ...      |
|tBodyAcc-mean()-Y               |numeric            |NA                                                       |-0.0173838185273684, -0.0185949199145763, ...                     |
|tBodyAcc-mean()-Z               |numeric            |NA                                                       |-0.111148103547368, -0.105500357966102, -0.112674859827586, ...   |
|tBodyAcc-std()-X                |numeric            |NA                                                       |-0.283740258842105, -0.423642838474576, -0.360356726034483, ...   |
|tBodyAcc-std()-Y                |numeric            |NA                                                       |0.114461336747368, -0.0780912533118644, -0.0699140652103448, ...  |
|tBodyAcc-std()-Z                |numeric            |NA                                                       |-0.260027902210526, -0.425257524915254, -0.387411994310345, ...   |
|tGravityAcc-mean()-X            |numeric            |NA                                                       |0.935223201473684, 0.91301733338983, 0.936506743275862, ...       |
|tGravityAcc-mean()-Y            |numeric            |NA                                                       |-0.282165021263158, -0.34660709, -0.261986357931034, ...          |
|tGravityAcc-mean()-Z            |numeric            |NA                                                       |-0.068102864, 0.0847270871186441, -0.138107866258621, ...         |
|tGravityAcc-std()-X             |numeric            |NA                                                       |-0.976609642526316, -0.972693201355932, -0.97777159137931, ...    |
|tGravityAcc-std()-Y             |numeric            |NA                                                       |-0.971305961473684, -0.972116879661017, -0.962355639482759, ...   |
|tGravityAcc-std()-Z             |numeric            |NA                                                       |-0.947717226105263, -0.972072847627119, -0.952091795, ...         |
|tBodyAccJerk-mean()-X           |numeric            |NA                                                       |0.0740416333157895, 0.0618080696279661, 0.0814745882660345, ...   |
|tBodyAccJerk-mean()-Y           |numeric            |NA                                                       |0.0282721095884211, 0.0182492679288136, 0.0100591485, ...         |
|tBodyAccJerk-mean()-Z           |numeric            |NA                                                       |-0.00416840617789474, 0.00789533706610169, ...                    |
|tBodyAccJerk-std()-X            |numeric            |NA                                                       |-0.113615602435789, -0.277530462620339, -0.26867964387931, ...    |
|tBodyAccJerk-std()-Y            |numeric            |NA                                                       |0.0670025007684211, -0.0166022362847458, -0.0449619594258621, ... |
|tBodyAccJerk-std()-Z            |numeric            |NA                                                       |-0.502699788526316, -0.586090418983051, -0.52948611637931, ...    |
|tBodyGyro-mean()-X              |numeric            |NA                                                       |-0.041830963526, -0.0530258157347458, -0.0256405192517241, ...    |
|tBodyGyro-mean()-Y              |numeric            |NA                                                       |-0.0695300462115789, -0.0482382316949153, ...                     |
|tBodyGyro-mean()-Z              |numeric            |NA                                                       |0.0849448173042105, 0.0828336633220339, 0.0813485942827586, ...   |
|tBodyGyro-std()-X               |numeric            |NA                                                       |-0.473535485894737, -0.561550255762712, -0.571869560172414, ...   |
|tBodyGyro-std()-Y               |numeric            |NA                                                       |-0.0546077686594737, -0.53845366779661, -0.563793260172414, ...   |
|tBodyGyro-std()-Z               |numeric            |NA                                                       |-0.344266629473684, -0.481085535084746, -0.476696411551724, ...   |
|tBodyGyroJerk-mean()-X          |numeric            |NA                                                       |-0.0899975423705263, -0.0818833429152542, ...                     |
|tBodyGyroJerk-mean()-Y          |numeric            |NA                                                       |-0.0398428709463158, -0.0538299449067797, ...                     |
|tBodyGyroJerk-mean()-Z          |numeric            |NA                                                       |-0.0461309295021053, -0.0514939156830508, ...                     |
|tBodyGyroJerk-std()-X           |numeric            |NA                                                       |-0.207421854757895, -0.389549831525424, -0.385922986034483, ...   |
|tBodyGyroJerk-std()-Y           |numeric            |NA                                                       |-0.304468510631579, -0.634140436101695, -0.639087984137931, ...   |
|tBodyGyroJerk-std()-Z           |numeric            |NA                                                       |-0.404255452631579, -0.435492677288136, -0.536664080344828, ...   |
|tBodyAccMag-mean()              |numeric            |NA                                                       |-0.136971176556842, -0.290407593728814, -0.254690333275862, ...   |
|tBodyAccMag-std()               |numeric            |NA                                                       |-0.219688645631579, -0.422544169322034, -0.328428936551724, ...   |
|tGravityAccMag-mean()           |numeric            |NA                                                       |-0.136971176556842, -0.290407593728814, -0.254690333275862, ...   |
|tGravityAccMag-std()            |numeric            |NA                                                       |-0.219688645631579, -0.422544169322034, -0.328428936551724, ...   |
|tBodyAccJerkMag-mean()          |numeric            |NA                                                       |-0.141428809031579, -0.281424153881356, -0.280009317413793, ...   |
|tBodyAccJerkMag-std()           |numeric            |NA                                                       |-0.0744717500625263, -0.164150985127119, -0.139916355325862, ...  |
|tBodyGyroMag-mean()             |numeric            |NA                                                       |-0.160979552536842, -0.446549092881356, -0.466411754137931, ...   |
|tBodyGyroMag-std()              |numeric            |NA                                                       |-0.186978364526316, -0.553019916271186, -0.561510683275862, ...   |
|tBodyGyroJerkMag-mean()         |numeric            |NA                                                       |-0.298703679084211, -0.547911950338983, -0.566135217931034, ...   |
|tBodyGyroJerkMag-std()          |numeric            |NA                                                       |-0.325324878894737, -0.557798151355932, -0.567371560862069, ...   |
|fBodyAcc-mean()-X               |numeric            |NA                                                       |-0.202794306326316, -0.346048161016949, -0.316614011689655, ...   |
|fBodyAcc-mean()-Y               |numeric            |NA                                                       |0.0897127264021053, -0.0219048103322034, -0.0813024353275862, ... |
|fBodyAcc-mean()-Z               |numeric            |NA                                                       |-0.331560117789474, -0.453806369830508, -0.412374074482759, ...   |
|fBodyAcc-std()-X                |numeric            |NA                                                       |-0.319134719578947, -0.457651383728814, -0.379276781206897, ...   |
|fBodyAcc-std()-Y                |numeric            |NA                                                       |0.056040006846, -0.16921968620339, -0.124030832001724, ...        |
|fBodyAcc-std()-Z                |numeric            |NA                                                       |-0.279686751494737, -0.455222146440678, -0.422998473965517, ...   |
|fBodyAcc-meanFreq()-X           |numeric            |NA                                                       |-0.207548374494737, -0.14579548970339, -0.246614196618966, ...    |
|fBodyAcc-meanFreq()-Y           |numeric            |NA                                                       |0.113093646103158, 0.198586466508475, 0.171743003017241, ...      |
|fBodyAcc-meanFreq()-Z           |numeric            |NA                                                       |0.0497265196172632, 0.0688995208186441, 0.0748536557377586, ...   |
|fBodyAccJerk-mean()-X           |numeric            |NA                                                       |-0.170546964549579, -0.304615322881356, -0.304694442551724, ...   |
|fBodyAccJerk-mean()-Y           |numeric            |NA                                                       |-0.0352255241130632, -0.0787640836610169, -0.140508590224138, ... |
|fBodyAccJerk-mean()-Z           |numeric            |NA                                                       |-0.468999224631579, -0.554956709661017, -0.514137255344828, ...   |
|fBodyAccJerk-std()-X            |numeric            |NA                                                       |-0.133586606326316, -0.31431306340678, -0.296596633103448, ...    |
|fBodyAccJerk-std()-Y            |numeric            |NA                                                       |0.106739857136, -0.0153329520084746, -0.00561498755362069, ...    |
|fBodyAccJerk-std()-Z            |numeric            |NA                                                       |-0.534713440421053, -0.615898188474576, -0.543529108103448, ...   |
|fBodyAccJerk-meanFreq()-X       |numeric            |NA                                                       |-0.209261973376842, -0.0727101584479661, -0.216042668103448, ...  |
|fBodyAccJerk-meanFreq()-Y       |numeric            |NA                                                       |-0.386237143210526, -0.263574018186441, -0.258667984862069, ...   |
|fBodyAccJerk-meanFreq()-Z       |numeric            |NA                                                       |-0.185530281244211, -0.254846438755932, -0.346946648103448, ...   |
|fBodyGyro-mean()-X              |numeric            |NA                                                       |-0.339032197115789, -0.429713536101695, -0.437845763793103, ...   |
|fBodyGyro-mean()-Y              |numeric            |NA                                                       |-0.103059416434737, -0.55477211220339, -0.561526265344828, ...    |
|fBodyGyro-mean()-Z              |numeric            |NA                                                       |-0.255940940315789, -0.396659907457627, -0.418126217413793, ...   |
|fBodyGyro-std()-X               |numeric            |NA                                                       |-0.516691938736842, -0.604053019152542, -0.615121369827586, ...   |
|fBodyGyro-std()-Y               |numeric            |NA                                                       |-0.0335081597884211, -0.533046952542373, -0.568888673448276, ...  |
|fBodyGyro-std()-Z               |numeric            |NA                                                       |-0.436562227473684, -0.559856635084746, -0.545896388103448, ...   |
|fBodyGyro-meanFreq()-X          |numeric            |NA                                                       |0.0147844986621053, 0.00727967988474576, 0.0337596901293103, ...  |
|fBodyGyro-meanFreq()-Y          |numeric            |NA                                                       |-0.0657746190010526, -0.0427009322372881, ...                     |
|fBodyGyro-meanFreq()-Z          |numeric            |NA                                                       |0.00077332156431579, 0.139752115269492, -0.0445079738913793, ...  |
|fBodyAccMag-mean()              |numeric            |NA                                                       |-0.128623450629474, -0.324289427932203, -0.290031535172414, ...   |
|fBodyAccMag-std()               |numeric            |NA                                                       |-0.398032586842105, -0.577105211694915, -0.456373080862069, ...   |
|fBodyAccMag-meanFreq()          |numeric            |NA                                                       |0.1906437244, 0.393206208305085, 0.113494312836207, ...           |
|fBodyBodyAccJerkMag-mean()      |numeric            |NA                                                       |-0.0571194000343158, -0.169064352813559, -0.186764516965517, ...  |
|fBodyBodyAccJerkMag-std()       |numeric            |NA                                                       |-0.103492403002105, -0.164091969449153, -0.0898519904044828, ...  |
|fBodyBodyAccJerkMag-meanFreq()  |numeric            |NA                                                       |0.0938221807027368, 0.20750092670339, -0.11716398312069, ...      |
|fBodyBodyGyroMag-mean()         |numeric            |NA                                                       |-0.199252568986316, -0.530704814745763, -0.569755772241379, ...   |
|fBodyBodyGyroMag-std()          |numeric            |NA                                                       |-0.321017953894737, -0.651792839661017, -0.632643292931034, ...   |
|fBodyBodyGyroMag-meanFreq()     |numeric            |NA                                                       |0.268844367525895, 0.305283825254237, 0.180946463034483, ...      |
|fBodyBodyGyroJerkMag-mean()     |numeric            |NA                                                       |-0.319308593778947, -0.583249293389831, -0.607751646034483, ...   |
|fBodyBodyGyroJerkMag-std()      |numeric            |NA                                                       |-0.381601911789474, -0.558104554745763, -0.549087007931034, ...   |
|fBodyBodyGyroJerkMag-meanFreq() |numeric            |NA                                                       |0.190663448793684, 0.126344614439492, 0.0457622957586207, ...     |


# Acknowledgement

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
