#############################################################
# build.bash
##############################################################
!/bin/bash

# Exit this script immediately if any of the commands fails
set -e

PROJECT_NAME=objc-cli-boilerplate # The product of this script. This is the actual app bundle!
BUNDLE_DIR=bin/ # A place for temporary files needed for building
#############################################################
echo → Step 1: Prepare Working Folders
#############################################################
# Delete existing folders from previous builds
rm -rf ${BUNDLE_DIR}
mkdir ${BUNDLE_DIR}
echo ✅ Create ${BUNDLE_DIR} foldermkdir tmp 
echo ✅ Try to build ${PROJECT_NAME} in clang
clang -framework Foundation objc-cli-boilerplate/main.m -o main
mv main bin/${PROJECT_NAME}
echo ✅ All done! Try executing: 
echo ./bin/objc-cli-boilerplate

