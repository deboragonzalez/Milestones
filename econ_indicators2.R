# Economic indicators 2000-2016
# Excluded exercise.

```{r econ2, results="asis"}
# 2000-2016

ecm4 <- lm(gop_propvote_change ~ d1600_hispanic + d1600_unemp, data = precinct_data, weights = weight)

ecm4.5 <- lm(gop_propvote_change ~ d1600_hispanic*d1600_unemp, data = precinct_data, weights = weight) 

ecm5 <- lm(gop_propvote_change ~ d1600_hispanic + d1600_poor, data = precinct_data, weights = weight)

ecm5.5 <- lm(gop_propvote_change ~ d1600_hispanic*d1600_poor, data = precinct_data, weights = weight) 

ecm6 <- lm(gop_propvote_change ~ d1600_hispanic + d1600_poor + d1600_unemp, data = precinct_data, weights = weight) 

stargazer(ecm4, ecm4.5, ecm5, ecm5.5, ecm6,
          title = "Change in Republican vote share 2012 to 2016 and change in Economic Indicators and Hispanic population, various time intervals",
          omit.stat = c("f", "ser"),
          covariate.labels = c("Change in Prop. Hispanic, 2000 to 2016", "Change in Prop. Unemployed, 2000 to 2016", "Interaction: Chg Prop. Hisp 00-16 & Chg Prop. Unemp. 00-16", "Change in Prop. Poor, 2000 to 2016", "Interaction: Chg Prop. Hisp 00-16 & Chg Prop. Poor 00-16"),
          dep.var.labels.include = FALSE,
          
          # Need to work on getting rid of dependent variable row.
          
          column.sep.width = "-5pt",
          no.space = T)
```




