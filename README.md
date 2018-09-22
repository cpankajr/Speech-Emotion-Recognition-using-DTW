# Speech-Emotion-Recognition-using-DTW


Speech is a vocalized form of human communication. Emotions exert an incredibly powerful
force on human behavior. Emotion plays an important role in a person’s approach to a
particular situation at that particular time. Unable to understand a person’s emotion in a
particular situation may cause a failure of communication. Thus recognizing the emotion
becomes one of the important aspects.

Recently increasing attention has been directed to the study of emotional content of speech
signals, and hence, many systems have been proposed to identify the emotional content of a
spoken utterance.

This project mainly aims to classify 5 emotions namely sad, happy, anger, surprise and
neutral. The input signal is divided into various frames of 20ms and features are extracted
from each frame using MFCC. Later on, DTW is used for classification of emotions.

You can get SAVEE database from [this link](http://personal.ee.surrey.ac.uk/Personal/P.Jackson/SAVEE/Register.html) after simple registration.

#

**SilenceRemoval.m** -> For removing silnce in uttrances because they do not contain any information
                    By using end point detection method

#
Following files used for extracting MFCC features from speech samples (taken from voicebox toolbox)


**enframe.m**	-> for framing of samples

**frq2mel.m**	-> coverts freq scale to mel freq scale

**mel2frq.m**	-> converts mel freq scale to freq scale

**rdct.m** -> for calcuclating DCT of data (it decorrelates the data)

**rfft.m** -> for calculating FFT of data

**melcepst.m**	-> main function which combines all functions to get MFCCs 

for further understanding of mfcc you can refer

[Spectrogram, Cepstrum and Mel-Frequency Analysis by Kishore Prahallad](https://github.com/cpankajr/Harmony-Search-for-Feature-Selection-in-ASER/blob/master/Documents/MFCC_%20explaination%20by%20Kishore%20Prahallad.pdf)

[Mel Frequency Cepstral Coefficient (MFCC) tutorial](http://practicalcryptography.com/miscellaneous/machine-learning/guide-mel-frequency-cepstral-coefficients-mfccs/)

#

dtw.m -> used for calulation minimum distance usind dynamic time warping between ref and test sample.
for more understanding DTW you can refer

[Dynamic time warping wikipedia page](https://en.wikipedia.org/wiki/Dynamic_time_warping)

[Mel Frequency Cepstral Coefficient (MFCC) tutorial](http://www.phon.ox.ac.uk/jcoleman/old_SLP/Lecture_5/DTW_explanation.html)

[Voice Recognition Algorithms using Mel
Frequency Cepstral Coefficient (MFCC) and
Dynamic Time Warping (DTW) Techniques by L. Muda](https://arxiv.org/ftp/arxiv/papers/1003/1003.4083.pdf)
