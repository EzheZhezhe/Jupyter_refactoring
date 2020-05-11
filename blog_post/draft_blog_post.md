# Jupyter notebook refactoring Part 0 #

## Table of contents ##

* [Introduction](#introduction)
* [Goal of this post](#goal-of-this-post)
* [Step 1 Sanity check](#step-1-sanity-check)
* [Step 2 Reproducible environment](#step-2-reproducible-environment)
* [Step 3 Meaningful naming](#step-3-meaningful-naming)
* [Useful links](#useful-links)

### Introduction ###

All people in the world can be easily divided into three major categories:

* those who love Jupyter notebooks
* those who hate Jupyter notebooks
* those who have nave heard about Jupyter notebooks.

I still remember that day when I was tasked with a deployment of two machine learning models and was handed over an [Untitled4.ipynb](https://twitter.com/vboykis/status/931212461436538881?s=20) with more than 126 cells executed in random order, written by a Data Scientist, who has recently left the company. Guess, which category I belonged to back then?

### Goal of this post ###

Share some useful tips and tricks to help Data Scientists write clean and reproducible code in Jupyter notebooks, and make life for Machine Learning, DevOps, Data and Software Engineers a little bit easier.

### Step 1 Sanity check ###

Before diving in refactoring answer one simple question: **What is the end goal of this notebook?** Is it a brief ad-hoc analysis, EDA, feature engineering, feature selection, modelling, model evaluation, model tuning or the full package? Based on your answer assign a meaningful name to your notebook.

### Step 2 Reproducible environment ###

To prevent an upleasant situation "I don't know what do you mean, it works on my machine", make sure that you have a reproducible environment. For Python you can use conda, virtual environments or docker containers. On top of it, your code can depend on the random number generators from different libraries. To get the same results more than once, set all the random number generators:

```python
import numpy as np
np.random.seed(seed_value)

import tensorflow as tf
tf.set_random_seed(seed_value)
```

### Step 3 Meaningful naming ###

variables ---> proper names (show bad examples, good examples and the best ones)

### Useful links ###

fgfg