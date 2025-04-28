# This is a PowerShell script that will install dependencies
# using a new virtual environment.
#
# This should work on the faculty machines 'dryadaXX' and possibly on other.
# This might also work on students' machines.


function ActivateVirtual() {
	py -m venv env
	.\env\scripts\activate.ps1
}

function InstallRequirements() {
	pip install --upgrade pip
	pip install wheel
	pip install --requirement .\requirements.txt
}

ActivateVirtual
InstallRequirements
