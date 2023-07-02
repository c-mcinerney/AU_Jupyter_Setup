# AU_Jupyter_Setup
How to setup Jupyter Labs, Python, Pip, and all required packages on a Macbook running MacOS.  

## Install Homebrew - requires system root password - press return to install the defaults
'export HOMEBREW_NO_INSTALL_FROM_API=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'

## Update brew
'brew update --auto-update'

## Install python
'brew install python'

## Verify the installed version of python
'python3 --version'

## Create a virtual environment
'python3 -m venv jupyter-venv'

## Activate the vitual environment.  Validate the command promp change from "systemname~ % ~" to "(jupyter-venv)  systemname~ % ~" 
'source jupyter-venv/bin/activate'

## Install the packages required for your notebooks
'pip install --upgrade pip'
'pip install --no-input pandas'
'pip install --no-input scipy'
'pip install --no-input datetime'
'pip install --no-input openvc-python'
'pip install --no-input glob2'
'pip install --no-input jupyterlab'

## Create an alias to do upgrades from within the virtual environment
'alias pip-upgrade-venv="pip freeze | cut -d'=' -f1 | xargs -n1 pip install -U"'

## Execute the upgrade of installed packages in the virtual environment
'pip-upgrade-venv'

## Deactivate to exit the vitrual environment 
'deactivate'
