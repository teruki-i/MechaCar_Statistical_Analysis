#import dependency
library(dplyr)

#import and read MechaCar_mpg.csv into tibble
mecha_mpg<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression on data, get summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg))
