datasciencecoursera
===================

Course Project for the Getting and Cleaning Data Coursera/JHU Class

This script is predicated on having the UCI dataset unzipped as is in your R/R Studio working directory.

Uses read.table to pull in the individual X and Y sets, uses colNames to overlay the "Features" data set on both the 
Test and Train sets.

Then uses rbind to pull the Test and Train data set together and overlays the activity column.  Uses aggregate() to pull
together and get the mean.

