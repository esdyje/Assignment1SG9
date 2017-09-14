
"""""""""""""""
Working while reading

Readings: Winter, B. (2013) 
  Linear models and linear mixed effects models in R 
  with linguistic applications
"""""""""""""""

setwd("~/OneDrive - Aarhus universitet/AU-Cognitive Science/3rd Semester/Experimental Methods 3/Week 2")
data=read.csv("Projektmappe1.csv", sep=";")

xmdl = lm(voicepitch ~ sex,data)
summary(xmdl)

mean(data[data$sex=="f",]$voicepitch)
mean(data[data$sex=="m",]$voicepitch)

age = c(14,23,35,48,52,67)
pitch = c(252,244,240,233,212,204)
data1 = data.frame(age,pitch)
xmdl1 = lm(pitch ~ age, data1)
summary(xmdl1)

