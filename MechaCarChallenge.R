#import dependency
library(dplyr)

#import and read MechaCar_mpg.csv
mecha_mpg<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression on data, get summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg))

#import and read suspension_coil.csv
suspension_coil<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#summary of suspension coil PSI data
total_summary <- suspension_coil %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

print(total_summary)

#summary of suspension coil PSI data by manufacturing lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

print(lot_summary)
