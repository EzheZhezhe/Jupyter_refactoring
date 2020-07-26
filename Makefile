.ONESHELL:

SHELL=/bin/bash
CONDA_ENV_NAME ?=jupyter_refactoring
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate $(CONDA_ENV_NAME) 

create:
	conda env create -f environment.yml

add-to-jupyter: 
	$(CONDA_ACTIVATE) && python -s -m ipykernel install --user --name $(CONDA_ENV_NAME)

run:
	$(CONDA_ACTIVATE) && jupyter notebook
	
remove-from-jupyter: 
	jupyter kernelspec uninstall $(CONDA_ENV_NAME)


