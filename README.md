# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
![regression_screenshot](https://github.com/teruki-i/MechaCar_Statistical_Analysis/blob/main/resources/mecha_mpg_reg.png)

Based on the multiple linear regression model generated from MechaCar mpg test results, vehicle length and grond clearance had stastically significant, or non-random, effect on fuel efficiency. They had p-values of 2.60e-12 and 5.21e-8 respectively.

As this regression model has an R-squared value of 0.7149, this model can explain approximately 71.49% of the variation in mpg of the MechaCars. Thus, this model is very effective at predicting the fuel efficiency of the MechaCars. And as the coefficients for all independent variables (and more importantly, the statistically significant vehicle length and ground clearance coefficients) in this model are non-zero, the slope of this model is non-zero. More specifically, as the vehicle length and ground clearance coefficients are positive multiple orders of magnitude larger than all other coefficients in this model, the slope in this model is positive.

## Summary Statistics on Suspension
![total_summary](https://github.com/teruki-i/MechaCar_Statistical_Analysis/blob/main/resources/PSI_total_summary.png)

Based on the summary statistics calculated from teh suspension coil weight capacity data, the data as a whole meets the design specifications as the variance of 62.29 PSI is below the acceptable variance of 100 PSI.

![lot_summary](https://github.com/teruki-i/MechaCar_Statistical_Analysis/blob/main/resources/PSI_lot_summary.png)

However, this isn't the case when looking at the data for each lot separately. The data for Lot 1 and Lot 2 meet the design specification as the variances are 0.98 PSI and 7.47 PSI respectively. The variance for Lot 1 though is 170.29 PSI, which far exceeds the 100 PSI limit.

## T-Tests on Suspension Coils

![total_PSI_t_test](https://github.com/teruki-i/MechaCar_Statistical_Analysis/blob/main/resources/t-test_suspension_coil_all.png)

When performing the t-test on MechaCar suspension coil weight capacities, it would appear that the suspension coil performance is no different from what can be expected from a typical vehicle. With a p-value of 0.060, the t-test fails to reject the null-hypothesis that the MechaCar suspension coils' weight resistance on average is the same as the 1,500 PSI weight capacity of an average vehicle's suspension coils.

However, the results are different when evaluating each of the three lots separately.

![lots_PSI_t_test](https://github.com/teruki-i/MechaCar_Statistical_Analysis/blob/main/resources/t-test_suspension_coil_lots.png)

With a p-value of 1, the suspension coils of the MechaCars in Lot 1 on average seem to perform no differently from those of an average vehicle. Similarly, for Lot 2, with a p-value of 0.61, we fail to reject the null hypothesis. Lot 3 MechaCars suspension coils, though, had a p-value of 0.042. And because the mean weight resistance is 1,496.14 PSI, the t-test results suggest that Lot 3 MechaCar suspension coils underperform compared to those of the average vehicle.

## Study Design: MechaCar vs Competition

In order to compare how MechaCar vehicles perform against other manufacturer vehicles, it's worth performing further analysis on combined fuel efficiency. In order to do so, it would be necessary to first collect fuel efficiency data for all other manufacturers' vehicles. Using a one-tailed, two-sample t-test, we could test the following hypotheses:
- H-null: MechaCar vehicles in the sample data on average doesn't have better combined fuel efficiency compared to vehicles in the industry sample.
- H-alternative: MechaCar vehicles in the sample data on average have better combined fuel efficeincy compared to vehicles in the industry sample.

If we can reject the null hypothesis, this could provide support for advertising that MechaCar vehicles are more fuel efficient than the typical vehicle.

This claim could be further bolstered though if we also make comparisons to individual manufacturers. In order to do so we could subset the industry data by each manufacturer, then perform additional one-tailed, two-sample t-tests. Each test would compare the MechaCar vehicles against a different manufacturer's vehicles and test the following hypotheses:
- H-null: MechaCar vehicles in the sample data on average don't have better combined fuel efficiency compared to vehicles in the manufacturer X sample.
- H-alternative: MechaCar vehicles in the sample data on average have better combined fuel efficiency compared to vehicles in the manufacturer X sample.

More detailed advertising material can then present combined fuel efficiency comparisons to other manufacturers. And to be careful with these claimed comparisons, we could present just the comparisons where we rejected the null hypothesis.