.ONESHELL:

SHELL=/bin/bash
CONDA_ENV_NAME ?=juprefser
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate $(CONDA_ENV_NAME) 

create:
	conda env create -f environment.yml

add-to-jupyter: 
	$(CONDA_ACTIVATE) && python -s -m ipykernel install --user --name $(CONDA_ENV_NAME)

run:
	$(CONDA_ACTIVATE) && jupyter notebook notebooks/juprefser_notebook.ipynb
	

all: create add-to-jupyter run
