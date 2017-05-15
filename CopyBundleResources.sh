#! /bin/bash


if [ "Release" != "${CONFIGURATION}" ]
then
rsync -avr --copy-links --no-relative --exclude '*/.svn/*' "${SRCROOT}/Loan/Resources/Supporting Files/Settings.bundle"  "${TARGET_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
fi

echo "done"

