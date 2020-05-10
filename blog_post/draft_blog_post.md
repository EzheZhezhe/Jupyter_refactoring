# Jupyter notebook refactoring #

## Introduction ##

All people in the world can be easily divided into three major categories:

* those who love Jupyter notebooks

* those who hate Jupyter notebooks

* those who have nave heard about Jupyter notebooks.

My post is about the first two groups.

## Harsh reality ##

 I still remember that day when I was tasked with two machine learning models deployment and was handed over an [Untitled4.ipynb](https://twitter.com/vboykis/status/931212461436538881?s=20) with more than 126 cells executed in random order written by a Data Scientist, who has recently left the company.

## Goal of this post ##

To help Data Scientis write clean and maintenable code in Jupyter notebooks, and make life for Machine Learning, DevOps, Data and Software Engineers a little bit easier.

### Tip 1 ###


0. what is the end goal of this notebook , is it EDA , feature engineering, modelling, model evaluation, model tuning or the full package?

1. start with conda env , link how to use conda env with Jupyter notebook

2. data --- > load data (create separate func for data loading,

3. variables ---> proper names (show bad examples, good examples and the best ones)

4. do not repeat yourself ----> package code in fucntions or even classes and 