# Heating Application with Network Computing (HANC)
HANC is a program for reducing carbon emissions by capturing waste heat generated from computing. It will keep your room at a set temperature for as long as you'd like.

Currently only for Windows computers. Linux/MacOS coming soon.

Requires HANC Elmor Kit or any Aquacomputer fan control device with an air temperature sensor (such as Quadro or Octo).

## Guide for installing F@h version

### Requirements
* The latest version of [HANC](https://github.com/Vitamoon/HANC/releases)
* The latest version of [Folding@home](https://foldingathome.org/start-folding)
* The latest version of [Aquasuite](https://aquacomputer.de/software.html) if using an Aquacomputer controller

### Installation
Install Folding@home (use Express install). Do not change the directory. (Optional) Restart your computer afterwards.

Open FAHControl and configure the user identity. Username does not matter. I would greatly appreciate if you joined Team 1065137 HANC!

Run HANC.exe (which is a 7-Zip self extracting archive) and find a good permanent location for the HANC folder - for example C:\Users\yourusernamehere\Documents.

Drag the appropriate included shortcut file ("CLICKME-FAH-devicetype") to a convenient location like Desktop or Start Menu. The bundled shortcuts are meant for placing the HANC folder in \Documents and if the HANC folder is located in a different location you may need to update the shortcuts accordingly.

The HANC Elmor Kit Knob functionality has not yet been implemented. Coming soon!

If you are using an Aquacomputer device, set a temperature sensor export (Data log > Automatic data exports > XML File) to the aqtemp.xml file in \HANC\Scripts with interval 1m. Make sure Aquasuite uses Celsius for data reporting (Aquasuite > Settings > Units).

Only version X.47 of Aquasuite has been tested. Other versions should use the same reporting method; if not, feel free to open an issue. Try to give the temperature sensor you are using sufficient airflow.

Run foldingfixer.exe once before attempting to use HANC.

### How to use
Run the shortcut to the relevant executable file. HANC usually takes about 30 seconds to start up.

## Uninstallation
Just delete the HANC folder.

## Credits
HANCware includes AutoHotkey v1.1.37.01 and Elmor THUSB v1.0.0.0