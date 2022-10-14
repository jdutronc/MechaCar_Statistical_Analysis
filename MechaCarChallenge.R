# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))

# Import and read in the Suspension_Coil.csv file as a table
coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function
coil_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Use the t.test() function to determine if the PSI across all lots is statistically different from the population mean
t.test(coil_table$PSI, mu=1500)

# Use the t.test() function and subset() argument for each lot
# Lot 1
t.test(subset(coil_table$PSI,coil_table$Manufacturing_Lot == "Lot1"), mu=1500)
# Lot 2
t.test(subset(coil_table$PSI,coil_table$Manufacturing_Lot == "Lot2"), mu=1500)
# Lot 3
t.test(subset(coil_table$PSI,coil_table$Manufacturing_Lot == "Lot3"), mu=1500)