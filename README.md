
Project Overview

The project given is our mid-term project for the course Introduction to Data Science. Data science is a discipline of study that blends content knowledge, programming abilities, and competence in math and statistics to draw forth important insights from data [1]. 

Our course teacher provided a dataset in which we had to do some pre-processing. The dataset contained 4 columns and 50 rows. The dataset was about the data for assault and murder arrests per 100,000 population in each of the 50 US states in 1973. The percentage of people who live in urban regions is also provided. The first column was the names of the states, the second one was the number of arrests for murder and the latter was for assault and the final column was about the percentage of the urban population.

At first, the data was converted into a CSV file as it was given in pdf. Then it was loaded in the Rstudio Ide. After that, the data was preprocessed and was stored in another CSV file. 

Tools Used:
•	RStudio
•	Excel
•	draw.io 








Project Solution Design

The steps required to reach  the desired solution are:
1)	Insert all the data from the Pdf file to the CSV file named “dataset.csv”.
2)	Load the data in Rstudio.
3)	Check for Missing values. If there are missing values replace them with the mean value.
4)	Check for Outliers using a boxplot. If there are outliers replace them with the mean value.
5)	Check if the data integration and reduction are required. If so, perform accordingly.
6)	Add a new column named “Type” to classify the population according to their size.
7)	Store the data in the new CSV called “cleaned_dataset.csv”






 




		
Data Pre-Processing

The steps of Data pre-processing that were followed are as followed:

1)	Data Cleaning:

Handling Missing Data: Missing values are those elements that are unknown, as the name suggests. For q arithmetical operations that are undefined, the reserved words NA or NaN in the R programming language denote a missing value [2]. Missing Data in every column was checked by using sum(is.na(column_name)). 
   

Fig: Missing value check

There was a missing data in the Assault column. The missing value as replaced by the mean values of that column. 
 
 
	
				
	
Smooth Noisy Data: Data smoothing is a statistical technique for removing outliers from datasets in order to highlight the trends[3]. The method that was used to detect outliers is Boxplot. The distribution of data is shown using a boxplot, which is a standardized method based on a five-number summary ("minimum," first quartile ("Q1"), median ("Q3"), and "maximum") [4].


 



 

It can be seen that there are outliers in the Assault and Urban Population column. For the assault column the data for the state of South Carolina has 879 cases of assault which seems like an outlier considering the trend of the data. And the IOWA state had urban population % of 570 which is not possible, it might have been a typo. Urban population percentage in the New York is very low compared to others there can also be typing mistake. 



 

	



Data Wrangling:  There is no need of data munging so the data cleaning step is complete.

2)	Data Integration: There is no other data set to implement the data integration so this step is skipped.


3)	Data Transformation: Convert the murder and assault values to integers because decimal numbers are impractical.

 
					

4)	Data Reduction: As the data size is very small , this step was skipped.
5)	Classifying the according to their population size:  The data was classified according to the size of the urban population. The data was categorized in this manner:  small (<50%), medium (<60%), large (<70%), and extra-large (70% and above).

 

					

The library “dplyr” was used to manipulate data in R. 

Discussion

R is a very powerful language for statistical analysis. This project was a very good opportunity to learn various functions of R. The data pre-processing is one of the most important pillar of data science because without proper data it is very difficult to do a proper analysis. 

Conclusion

This project dealt with data pre-processing which is an integral part of data science. The given data was processed thoroughly using various functions of R language. The cleaned dataset was stored in a CSV named “cleaned_dataset.csv” which contains 50 rows and 5 columns. The data is ready for analysis phase now. The Source code and the cleaned dataset are available here: https://github.com/KaziTanvir/aiub-IDS-mid-project .

  



References

[1]	“Data Science,” DataRobot AI Cloud. https://www.datarobot.com/wiki/data-science/ (accessed Oct. 22, 2022).
[2]	“Handling Missing Values in R Programming,” GeeksforGeeks, May 29, 2020. https://www.geeksforgeeks.org/handling-missing-values-in-r-programming/ (accessed Oct. 22, 2022).
[3]	“Data Smoothing - Overview, Methods, Benefits and Drawbacks.” https://corporatefinanceinstitute.com/resources/business-intelligence/data-smoothing/ (accessed Oct. 22, 2022).
[4]	“Understanding Boxplots: How to Read and Interpret a Boxplot | Built In.” https://builtin.com/data-science/boxplot (accessed Oct. 22, 2022).

