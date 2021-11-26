#import dependency
library(dplyr)

# Deliverable #1
#import and read MechaCar_mpg.csv
mecha_mpg<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression on data, get summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg))


# Deliverable #2
#import and read suspension_coil.csv
suspension_coil<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#summary of suspension coil PSI data
total_summary <- suspension_coil %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#summary of suspension coil PSI data by manufacturing lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# Deliverable #3
#t-test to see if PSI in suspension coil data set as a whole is different from population mean of 1,500 PSI
t.test(suspension_coil$PSI, mu=1500)

#create subsets of suspension coil data by lot
Lot1 = subset(suspension_coil, Manufacturing_Lot=='Lot1')
Lot2 = subset(suspension_coil, Manufacturing_Lot=='Lot2')
Lot3 = subset(suspension_coil, Manufacturing_Lot=='Lot3')

#t-tests to see if PSI for each lot in suspension coil data set is different from population mean of 1,500 PSI
t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)
