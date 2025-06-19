library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)

datos<-read.csv("C:\\Users\\naroa\\Downloads\\netflix.csv")
summary(datos)

desv <- sd(datos$Minutes,na.rm = T)
desv2 <- sd(datos$Seasons,na.rm = T)

length(unique(datos$type))
length(unique(datos$country))
length(unique(datos$director))

miss_var_summary(datos)
vis_miss(datos)
