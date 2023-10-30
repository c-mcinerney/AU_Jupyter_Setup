#!/usr/bin/env bash

# install python
brew install python

# verify the installed version of python
python3 --version

# create a virtual environment
python3 -m venv jupyter-venv

# activate the vitual environment.  Validate the command promp change from "systemname~ % ~" to "(jupyter-venv)  systemname~ % ~" 
source jupyter-venv/bin/activate

# install the packages required for your notebooks
pip install --upgrade pip
pip install --no-input pandas
pip install --no-input scipy
pip install --no-input datetime
pip install --no-input opencv-python
pip install --no-input glob2
pip install --no-input jupyterlab

# create an alias to do upgrades from within the virtual environment
alias pip-upgrade-venv="pip freeze | cut -d'=' -f1 | xargs -n1 pip install -U"

# Execute the upgrade of installed packages in the virtual environment
pip-upgrade-venv

# deactivate to exit the vitrual environment 
deactivate
