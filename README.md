# Jeopardy Models

Braden, Kang, Limoli, Sodhi

<h1>Summary</h1>
We decided to use Jeopardy data from 1984 to 2012. We analyzed the data to predict the value of the type of Jeopardy round (Double Jeopardy Vs. Jeopardy). We used machine learning to build a model to predict the outcome. We took the data from Kaggle.com [jeopardy.csv]() and cleaned it before putting it into a logistic regression, deep learning, Naive Bayes, and a linear regression model. We also used the data in [Tableau](https://public.tableau.com/profile/jasveen.sodhi#!/vizhome/Jeopardy_Analysis/Story1?publish=yes) to create visualizations to provide more insight to the data and present our findings. 

<h1>Clean The Data</h1>
[jeopardy.csv]()
[jeopardy_new.csv]()
[updated_jeopardy_clean.ipynb]()
[schema]()
[queries]()
We initially used Colab and Amazon Web Services (AWS) to store and clean the data. We uploaded the CSV into AWS and then set up a Spark session to connect Colab to the stored data. For most of the cleaning, we used PySpark. Some of the issues we came up against were dropping nulls, punctuation in the columns, getting rid of special characters, changing strings to integers, and going back and forth between an array and a dataframe. Once the data was cleaned, we put it into the database in Postgres [schema]() and then deleted all of the rows that said ‘tiebreaker’ and ‘final jeopardy’ because their values were 0 [queries](). Once the queries were finished, it was exported into a new CSV called [jeopardy_new.csv]() which was then used for the machine learning models.

<h1>Machine Learning Models</h1>
[linear_regression]()
[logistic_regression]()
Using the cleaned data from the AWS database, we started with a linear model, using all the inputs in the data to try to guess the value of a question. The linear regression model was only 9% accurate, so we moved on to a logistic regression model hoping to predict what types of questions end up being Double Jeopardy!, models with all inputs or with value alone are almost 70% accurate, while a model with all inputs but value is 50% accurate. Value is the explanatory variable that does the most work predicting the round of the questions. 


[Neural Network/Deep Learning]
We discovered that with the neural network model, the accuracy was very low in determining the ‘Round’ outcome using ‘Categories’ as the input.  For both Neural Network and Deep learning models the accuracy was the same at around 0.50.  
However, using ‘Volume’, ‘Year’, and ‘Month’ as inputs to predict the round, we found a much better accuracy at .7157 and interestingly enough, the deep learning model delivered a lower accuracy rate at 0.6880, which shows that more layers doesn’t necessarily deliver better results.  

[Naive Bayes]
The Naive Bayes model delivered better results and accuracy when using ‘Categories’ to determine the ‘Round’.  We were able to build the model so that it would analyze the text in each category and classify it as either a ‘Jeopardy’ or ‘Final Jeopardy’.  The accuracy for this model was 0.72.


<h1>Visualizations Using Tableau<h1>

Top 20 Categories in Jeopardy
The top category in Jeopardy is Before and After with 557 different questions within the category. Science is a close second at 551. The lowest appears to be Opera at 299.

Number of Shows that Air per Year
2008 had the highest amount at 14,036 shows and 1988 had the lowest at 888 shows. This visualizes how Jeopardy has become more popular over the years with an increasing amount of shows per year. There was an unclear jump in the amount of shows between 1996 and 1997 specifically from 4,891 to 13,099 shows.

Average Value over the Years
The average value of Jeopardy has increased over the years, specifically between 2001 at 496 and 2002 at 940.2. This may be due to 9/11 in 2001 and an increase in pay to contestants during this time.

Average Value per Category by Round
Double jeopardy has the highest value in comparison to the other rounds since the clue values are doubled compared to the regular Jeopardy round. For example, we can see within the American History category, it jumps from 396 in the regular round to 834.

Total Count vs Average Value of Categories by Round
The total number of questions categorized as ‘Jeopardy’ and ‘Final Jeopardy’ are pretty much the same, however when you compare them based on their average value, the difference is significant.    This triggered our interest in seeing how random the questions were and to see if we could use machine learning to predict if a specific category would likely be a ‘Jeopardy’ or a ‘Final Jeopardy’ outcome.


[Tableau Visualization] https://public.tableau.com/profile/jasveen.sodhi#!/vizhome/Jeopardy_Analysis/Story1?publish=yes 
