We used the https://github.com/autowarefoundation/autoware.privately-owned-vehicles/tree/main 
and updated the https://github.com/autowarefoundation/autoware.privately-owned-vehicles/tree/main/Models/visualizations
with new and updated files.


Tested on Ubuntu 22.04, you can test on your own risk. If you have questions open an issue


how to install all

1. download all weights and safe it to the Downloads folder
   https://hidrive.ionos.com/lnk/J8bkS5SeE
2. download all install files and copy them into your $Home Folder
3. pip install -r requirements.txt (read the requirements install file)
4. sudo chmod +x autoware_private_install.sh
5. sudo chmod +x autoware_weights_install.sh
6. run ./autoware_private_install.sh
7. run ./autoware_weights_install.sh

If all runned without error, go to autoware_projects/commands and test the commands  

Camera usage

for the camera commands check here or the help.txt in the autoware_projects/commands folder

How to install camera test

#how to install
sudo apt install v4l-utils

#List you all devices with ports
v4l2-ctl --list-devices

#List you all devices formats
v4l2-ctl --list-formats-ext


When you use the camera python files (camera_visualization_cam.py) or camera_test.py
you need to setup your camera port in for example

camera_visualization_cam.py

parser.add_argument(
        "--camera_id",
        type=int,
        default=0,
        help="Camera device index (default: 0)"
        
run v4l2-ctl --list-devices, see the camera ports of your target camera and try the ports
with the camera_test.py (cap = cv2.VideoCapture(6), change the number according to the list), 
if you find the right port then add this port no to the default=0 for example rename it for 
example to default=4.

Installation of the system

1. run pre_install.py
2. run autoware_private_install.py

open terminal

run: 
cd autoware.privately-owned-vehicles/Models/visualizations

open 

commands/python_commands.txt, and run any of the commands.
