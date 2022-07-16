
#import dependencies
library(tidyverse)
library(magrittr)
library(dplyr)

##Deliverable 1 Linear Regression
#Importing csv
mpg_df <- read.csv('MechaCar_mpg.csv', check.names= F, stringsAsFactors = F)
#Glance of df
head(mpg_df)
#Linear regression
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_df)
mpg_lm
# Statistical summary of linear regression
summary(mpg_lm)

##Deliverable 2 Visualization for Trip Analysis
#Import csv
coil_df <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
#Glance of df
head(coil_df)
#Summarize
total_summary <- coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
#Summarize by Lot
lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% summarize (Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


##Deliverable 3 T-test
#T-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(coil_df$PSI, mu=1500)
#T-test by lot
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot1'),mu=1500)
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot2'),mu=1500)
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot == 'Lot3'),mu=1500)