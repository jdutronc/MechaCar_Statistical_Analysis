# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
<img align='left' src='Resources/mpg_lm.png' height='150'>
Looking at the individual variable p-values in the summary output below, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model.
<br><br>
(click the image to enlarge)
<br>
<img align='left' src='Resources/mpg_pvalue.png' height='200'>
According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on mpg efficiency.
<br><br>
(click the image to enlarge)
<br clear="left"/>
When an intercept is statistically significant, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent variables are equal to zero. A significant intercept like ours here could mean either that the significant features (such as length and ground clearance) may need scaling or transforming to help improve the predictive power of the model, or that there are other variables that can help explain the variability of our dependent variable that have not been included in our model.





