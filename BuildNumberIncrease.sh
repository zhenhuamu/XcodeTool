#! /bin/bash


echo $CONFIGURATION
if [ "Pre" == "${CONFIGURATION}" -o "Release" == "${CONFIGURATION}" ]
then
buildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "${INFOPLIST_FILE}")
buildNumber=$(($buildNumber + 1))
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "${INFOPLIST_FILE}"
echo "build number increase"
fi

echo "done"

