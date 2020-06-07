# Part 1: MPG Regression

# Dependencies
library(tidyverse)

# Read in MechaCar_mpg.csv
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', stringsAsFactors = F)

# Generate summary statistics for multiple linear regression of MechaCar_mpg dataset (exploratory)
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mechacar_mpg))

# Create multiple linear regression model that predicts mpg (using select variables from MechaCar_mpg dataset)
lm(mpg ~ vehicle.length + ground.clearance, data=mechacar_mpg)

# Generate summary statistics for multiple linear regression of MechaCar_mpg dataset (using select variables from MechaCar_mpg dataset)
summary(lm(mpg ~ vehicle.length + ground.clearance, data=mechacar_mpg))

# Part 2: Suspension Coil Summary

# Read in Suspension_Coil.csv
suspension_coil <- read.csv(file='Suspension_Coil.csv', stringsAsFactors = F)

# Dependencies
library(pastecs)

# Generate summary statistics
stat.desc(suspension_coil$PSI)


# Part 3: Suspension Coil T-Test
# Generate Suspension Coil t-test for Suspension Coil Data
t.test(suspension_coil$PSI,mu = 1500)

# Generate Suspension Coil t-test for each lot in Suspension Coil Data
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
