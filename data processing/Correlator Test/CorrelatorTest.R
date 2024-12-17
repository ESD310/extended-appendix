library(mosaic)
library(tidyverse)

##Det gik lidt stærkt, håber det lidt giver sig selv.


data <- read.csv("C:\\Users\\Tueha\\Aalborg Universitet\\ESD310 - General\\P3 Projekt\\Tests\\Correlator Test\\Excel\\BedreData.csv", header=TRUE, stringsAsFactors=FALSE)
summary(data)
boxplot(data[,1])
sd(data[,1])
sapply(data[,1:5], sd, na.rm = TRUE)

hist(data[,3],breaks = 70,xlab = "ToF in Microseconds", ylab = "Number of Measurements",cex.lab = 1.5, col = "lightblue", cex.axis= 1.5)

##Filtrerer de reflekterede målinger fra
newdata <- filter(data, data[3] < 5000)
sapply(newdata[3], sd, na.rm = TRUE)


class(data[,3])

summary(newdata[3])
i= 5
max(data[,i],na.rm = TRUE) - min(newdata[,i], na.rm = TRUE)
