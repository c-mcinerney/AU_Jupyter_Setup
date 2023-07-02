
###Jupyter Labs setup guide for MacOS

This is a step by step guide to setup Jupyter Labs, Python, Pip, and all required packages on a Macbook running MacOS.  

1. ## Homebrew installation

Homebrew - requires system root password. After you execute the command, you will be prompted to press return to install the defaults

`export HOMEBREW_NO_INSTALL_FROM_API=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

Update brew

`brew update --auto-update`

2. ## Install python

Python can be installed a variety of ways.  Homebrew will be used for this guide. The `yes | ` answers yes questions asked by brew during the installation.

`yes | brew install python`

Verify the installed version of python3 matches your peers or is using the latest version.

`python3 --version`

3. ## Create a python virtual environment. 

A virtual environment is a Python environment such that the Python interpreter, libraries and scripts installed into it are isolated from those installed in other virtual environments, and (by default) any libraries installed in a “system” Python. This helps resolve any issues related to vesion drift, command changes from version to version and so on. This environment is named __jupyter-venv__


`python3 -m venv jupyter-venv`

You must then activate the virtual environment.

`source jupyter-venv/bin/activate`

Validate that the command promp has now added the virtual environment`(jupyter-venv)  systemname~ % ~`

4. ##  Upgrade pip in the virtual environment and install the required python packages.  This list also includes Jupyter Lab.

`pip install --upgrade pip`
`pip install --no-input datetime`
`pip install --no-input glob2`
`pip install --no-input jupyterlab`
`pip install --no-input openvc-python`
`pip install --no-input pandas`
`pip install --no-input scipy`

Next, create an alias to do package upgrades from within the virtual environment

`alias pip-upgrade-venv="pip freeze | cut -d`=` -f1 | xargs -n1 pip install -U"`

Execute the upgrade of installed packages in the virtual environment

`pip-upgrade-venv`

5. ## Launch Jupyter Lab

`jupyter lab`

 :warning: __Save all open work before shutting down the Jupyter Lab server.__

To shutdown Jupyter Lab from the menu in the web interface, select `File` then `Shutdown`.  If you choose to exit from the terminal command line, press `control-c`.  You will be prompted `Shutdown this Jupyter server (y/[n])?`.  If you do not answer `y` in 5 seconds, normal server operations will resume.

6. ## Deactivate to exit the vitrual environment 

`deactivate`
