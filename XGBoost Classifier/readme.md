# Adult Census Classifier using XGBoost

The United States Adult income dataset was extracted by Barry Becker from the 1994 US Census Database. The data consists of anonymized information such as occupation, age, native country, race, capital gain, capital loss, education, work class and more.

Each row is labelled as either having a salary ">50K" or "<=50K".

The goal is to train a binary classifier on the training dataset to predict the column income_bracket which has two possible values ">50K" and "<=50K" and evaluate the accuracy of the classifier with the test dataset.

Chose to use XGBoost as the binary classifier to model the prediction,an ensemble technique that trains models in succession, with each new model being trained to correct the errors made by previous ones. 

Read more on XGBoost:

https://homes.cs.washington.edu/~tqchen/2016/03/10/story-and-lessons-behind-the-evolution-of-xgboost.html

https://towardsdatascience.com/a-beginners-guide-to-xgboost-87f5d4c30ed7


