# Jupyter notebook refactoring - Part 1 

## Table of contents 

* [Introduction](#introduction)
* [The goal of the refactoring series](#the-goal-of-the-refactoring-series)
* [Step 1 Sanity check](#step-1-sanity-check)
* [Step 2 Reproducible environment](#step-2-reproducible-environment)
* [Step 3 Meaningful naming](#step-3-meaningful-naming)
* [Conclusion](#conclusion)
* [Further reading](#further-reading)

### Introduction 

All people in the world can be easily divided into three major categories:

* those who love Jupyter notebooks
* those who hate Jupyter notebooks
* those who have nave heard about Jupyter notebooks.

I still remember that day when I was tasked with the deployment of two machine learning models. An [Untitled4.ipynb](https://twitter.com/vboykis/status/931212461436538881?s=20) was handed over to me with more than 126 cells executed in random order, written by a Data Scientist, who has recently left the company. Guess, which category I belonged to back then?

### The goal of the refactoring series 

Share some useful tips and tricks to help Data Scientists write clean and reproducible code in Jupyter notebooks. To make a life for Machine Learning, DevOps, Data, and Software Engineers a little bit easier.

### Step 1 Sanity check 

Before diving in refactoring answer one simple question: **What is the end goal of this notebook?** Is it a brief ad-hoc analysis, EDA, feature engineering, feature selection, modeling, model evaluation, model tuning, or the full package? Based on your answer assign a meaningful name to your notebook.

### Step 2 Reproducible environment 

To prevent an unpleasant situation “I don’t know what you mean, it works on my machine”, make sure that you have a reproducible environment. For Python, you can use conda, virtual environments, or docker containers.

Moreover, your code can have dependencies on the random number generators from different libraries. To get the same results more than once, set the seed value. For example, in Python:

```python
import numpy as np
np.random.seed(seed_value)

import tensorflow as tf
tf.set_random_seed(seed_value)
```

### Step 3 Meaningful naming 

Make sure that you are still able to understand your code even after one week. Start with giving informative names to the variables.

Bad practices in Python

```python
import pandas as pd
...
df1 = pd.read_csv(path)
...
x = df1[df1.col_x => 200]
y = df1[(df1.col_x >= 200) & (df1.col_y == 'Drama')]
```

Good practices in Python

```python
import pandas as pd
...
movies = pd.read_csv(path)
...
long_movies = movies[movies.duration => 200]
long_drama_movies = movies[(movies.duration >=200) & (movies.genre == 'Drama')]
```

### Conclusion 

In the first part of the series, we created a foundation for Jupyter notebooks refactoring. We started from sanity check (the end goal of your notebook). Then moved to the reproducible environments, and lastly, to meaningful names of the variables.

The next part will be fully devoted to functions.

### Further reading 

* [Add Conda environment to your Jupyter notebook](https://medium.com/@nrk25693/how-to-add-your-conda-environment-to-your-jupyter-notebook-in-just-4-s*teps-abeab8b8d084)
* [Add virtual environment to your Jupyter notebook](https://anbasile.github.io/posts/2017-06-25-jupyter-venv/)
* [How to get reproducible ML results with Keras](https://machinelearningmastery.com/reproducible-results-neural-networks-keras/)
* [Structure your data science project](http://drivendata.github.io/cookiecutter-data-science/)
* [Enhance Jupyter Notebook’s productivity](https://towardsdatascience.com/bringing-the-best-out-of-jupyter-notebooks-for-data-science-f0871519ca29)