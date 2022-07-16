# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
 ![Alt text]( https://github.com/Jimena-QM/MechaCar_Statistical_Analysis/blob/main/images/Deliverable_1.jpg "Deliverable 1")

1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    Vehicle length 2.6e-12 and ground clearance 5.21e-08 variables provide a non-random amount of variance to the mpg values in the dataset. Since the Pr < 0.05 this meand that both variables have significant impact on the mpg values. 
2) Is the slope of the linear model considered to be zero? Why or why not?
    The variables have slopes that are non-zero, though vehicle weight and spoiler angle are close to zero. Vehicle length: 6.267, vehicle weight: .001245, spoiler angle: 0.06877, ground cleareance: 3.546, AWD:-3.411. Since the Pr of the linear regression is 5.08e-08, it is smaller than the assumed significance level of 0.05%. Given this there is enough evidence to reject the null hypothesis, meaning that the slope of our linear model is non-zero. 
3)  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    With an adjusted R-squared of 0.6825, it can be stated that the linear model can predict mpg of MechaCar prototypes effectively. Using adjusted R-squared instead of multiple R-squared, since adjusted controls against the increases of multiple R-squared as more variables are passed in the regression, and adjusted also adds penalities for the number of predictors in the model.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Total Summary Statistics

 ![Alt text]( https://github.com/Jimena-QM/MechaCar_Statistical_Analysis/blob/main/images/D2_ttl_smry.jpg "Deliverable 2")


Summary Statistics by Lot

 ![Alt text]( https://github.com/Jimena-QM/MechaCar_Statistical_Analysis/blob/main/images/D2_lot_smry.jpg "Deliverable 2")


Based on the total summary we could assume that all manufacturing lots in total meet the design specifications since the variance is 62.3 it does not exceed the 100 limit. By double clicking by lot, we find that Lot 3 with a 170.28 variance exceeds the 100 limit and is driving the total variance to 62, since the other two lots are below 10.

## T-Tests on Suspension Coils
All lots T-test

 ![Alt text]( https://github.com/Jimena-QM/MechaCar_Statistical_Analysis/blob/main/images/D3_All_ttest.jpg "Deliverable 3")


With a p-value of 0.06 that is higher than the assumed significance level of 0.05 we don't have enough evidence to support rejecting the null hypothesis. The mean of all lots is 1498.78 which is statistically similar to the assumed population mean of 1500. 

T-test by lot
Lot 1

 ![Alt text]( https://github.com/Jimena-QM/MechaCar_Statistical_Analysis/blob/main/images/D3_lot_1_ttest.jpg "Deliverable 3")


With a p-value of 1 we fail to reject the null hypothesis, considering the significance level of 0.05

Lot 2

 ![Alt text]( https://github.com/Jimena-QM/MechaCar_Statistical_Analysis/blob/main/images/D3_lot_2_ttest.jpg "Deliverable 3")


With a p-value of 0.6 we fail to reject the null hypothesis, considering the significance level of 0.05.

Lot 3

 ![Alt text]( https://github.com/Jimena-QM/MechaCar_Statistical_Analysis/blob/main/images/D3_lot_3_ttest.jpg "Deliverable 3")

With a p-value of 0.04 we can reject the null hypothesis. Also, the mean of this lot is signficantly different from the 1500 and from the other 2 lots. These may indicate that this lot should be evaluated further and may need to be discarded from being used. 

## Study Design: MechaCar vs Competition
- What metric or metrics are you going to test?
    - Avg selling price, fuel efficiency in the city and highway (mpg), maintenance cost, frequency of maintenance, safety ratings, engine - electric/hybrid/standard. These metrics should be considered for MechaCar and competitors. 
- What is the null hypothesis or alternative hypothesis?
    - Null Hypothesis: MechaCar has a correct selling price based on performace of each key metric.
    - Alternative Hypothesis: MechaCar has an incorrect selling price based on performance of each key metric. 
- What statistical test would you use to test the hypothesis? And why?
    - I would use a multiple linear regression test to determine the metrics that have the highest correlation with the selling price and what metrics have the most impact on price. 
- What data is needed to run the statistical test?
    - All metrics mentioned above, the names of the competitors and vehicle types most relevant to MechaCar. 
