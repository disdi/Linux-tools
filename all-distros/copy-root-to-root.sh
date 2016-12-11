
#!/bin/bash

# Will attempt to look for "root" folder. 
# Either place "root" next to this script or else it'll search for
# ../root, assuming this is run from the "all-distros" or "root" folders. 

if [ -d root ]; then
    cd root
fi
cd ..

if [ -d root ]; then # If root is found, proceed. If not, exit.
    sudo cp -R ./root/* /
    # Cleans up if it accidentally copies itself to /  
    if [ -f /copy-root-to-root.sh ]; then
        sudo rm /copy-root-to-root.sh
    fi
	echo "Successfully executed the script! "
    exit 0
else
    echo "Failed to find the \"root\" folder. "
    exit 1
fi







