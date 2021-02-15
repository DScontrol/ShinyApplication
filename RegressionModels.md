


Regression Models: Mtcars data
========================================================
title: "Shiny Application and Reproducible Pitch"
author: Alex M.
date: 15 Febrary 2021
autosize: true



Introduction
========================================================
This presentation is about a Shiny application build for the Coursera Course Developing Data Products.The Shiny app let us to implement a simply regression model using the "mtcars" data set.You have a description of the mtcars data set here: https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html
, and you can get more information about the data in the tab "data" of the application.

![plot of chunk data](./png/data.png)


Making a regression model (User Interface)
========================================================

In the user interface we have to inform two values:

* *The predictor*: the dependent variable we want to predict
* *The regresor*: the independent variable we are going to use for the prediction

Once we get the two values informed, in their respective list boxes, we can press the *submit button* to fit our regression model, and by default, we get three different outputs:

- A scatter plot with the regression and smooth lines (see "Plot" tab next slide). 
- The values of the slope and the interception (see next slide).
- A summary of the statistical values of the model (see slide 5 "Model summary").


Getting the results: Scatter Plot
========================================================

![plot of chunk model](./png/plot.png)



Getting the results: Model Summary
========================================================

![plot of chunk summary](./png/summary.png)