library(dplyr)
library(rcompanion)
library(car)

insert.packages("car")
#Find the average prices for Albany, Houston, Seattle

regions <- na.omit(avocados %>% filter(region %in% c("Albany", "Houston", "Seattle")))

plotNormalHistogram(regions$AveragePrice)

bartlett.test(AveragePrice ~ region, data=regions)

fligner.test(AveragePrice ~ region, data=regions)
