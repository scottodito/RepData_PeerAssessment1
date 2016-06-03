## data set found on 07/01/2016 at url https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip 

## require the dplyr lib for easy mods of data

if ("dplyr"  %in% rownames(installed.packages()) == FALSE) {
  require(dplyr)
  install.packages("dplyr")
}


if ("dplyr"  %in% rownames(installed.packages()) == FALSE) {
  require(ggplot2)
  install.packages("ggplot2")
}

## read in the data set
unzip('activity.zip')
activityTable <- read.csv('activity.csv')

## variables include steps, date, interval

## get the list of days
dayLevels <- levels(activityTable$date)


## create new table with factors averages
## iterate the days and find the mean
actTable <- tbl_df(activityTable)
## group data
data_by <-  group_by(actTable, date)
summary_output <- summarize_each(data_by, funs(mean))

## iterate the days and find the median

## create a histogram of total steps taken per day
hist(activityTable$steps)


## make a time series plot of the 5-minute interval 
## and average steps taken across all days (y-axis)

## the interval that has the maximum number of steps across all days

## the total number of rows with NA's as a value

## in order to fix this how do we set the na's with approx value

## here is the dataset that has the missing values approximated

## new histogram of the data with the approximated values 

## these plots differ by

## DIFERENCES IN WEEKDAYS AND WEEKENDS

## new variable in dataset with levels weekday and weekend

## panel plot with the timeseries of 5 min interval(x)
## and average number of steps taken averaged across all weekdays 
## or all weekends

## Here is the mean and the median number of steps taken per day

## Panel plot that shows the number of steps taken per 5-min intervals across weekdays and weekends




## transform to make na values 0

activityTable <- activityTable %>%
  mutate(steps = ifelse(is.na(steps),0,steps))

