#!/bin/bash

set -e  # stop on error


# Go to home directory
cd "$HOME"

####################################
# DOWNLOAD & PREPARE WEIGHTS
####################################

# Go to Downloads
cd "$HOME/Downloads"

# Extract weights
unzip autoware_weights.zip -d "$HOME/autoware_data2"


####################################
# COPY WEIGHTS INTO PROJECT
####################################

cd "$HOME"

# Copy weights
cp "$HOME/autoware_data2/autoware_weights/EgoLanes"/weights_egolanes.pth \
   autoware_projects/weights/EgoLanes/ || true

cp "$HOME/autoware_data2/autoware_weights/Scene3D"/weights_scene3d.pth \
   autoware_projects/weights/Scene3D/ || true

cp "$HOME/autoware_data2/autoware_weights/SceneSeg"/weights_sceneseg.pth \
   autoware_projects/weights/SceneSeg/ || true

cp "$HOME/autoware_data2/autoware_weights/DomainSeg"/weights_domainseg.pth \
   autoware_projects/weights/DomainSeg/ || true

cp "$HOME/autoware_data2/autoware_weights/AutoSpeed"/weights_autospeed.pth \
   autoware_projects/weights/AutoSpeed/ || true

cp "$HOME/autoware_data2/autoware_weights/AutoSteer"/weights_autosteer.pth \
   autoware_projects/weights/AutoSteer/ || true

# Duplicate EgoLanes weights into AutoSteer (as requested)
cp "$HOME/autoware_data2/autoware_weights/EgoLanes"/weights_egolanes.pth \
   autoware_projects/weights/AutoSteer/ || true

echo "✅ Weights downloaded, extracted, and copied successfully"

# Delete autoware_data2 if it exists
if [ -d "$HOME/autoware_data2" ]; then
    rm -rf "$HOME/autoware_data2"
    echo "✅ Deleted ~/autoware_data2"
fi

# Delete the ZIP file if it exists
if [ -f "$HOME/Downloads/autoware_weights.zip" ]; then
    rm -f "$HOME/Downloads/autoware_weights.zip"
    echo "✅ Deleted ~/Downloads/autoware_weights.zip"
fi

    
echo "✅ Step2 install completed successfully, final installation done!!!!"





