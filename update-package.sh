#!/bin/bash

set -x
set -e

# Pass version as the first argument to the script
VERSION=$1
FILENAME=PlaygroundFramework.xcframework."$VERSION".zip

# Name of the result framework file
ARCHIVE_URL=https://github.com/someyura/PlaygroundFramework/blob/main/Release/"$FILENAME"

# # Downloading the archive with a framework
cd Archives/ && { curl -O $ARCHIVE_URL ; cd -; }

# # Computing the checksum for the framework
CHECKSUM=`swift package compute-checksum Archives/$FILENAME`

# Updating Package.swift

# ARCHIVE_URL= perl -p0e "s/"
perl -i -p0e "s{url:[^,]*}{url: \"$ARCHIVE_URL\"}g" Package.swift
perl -i -p0e "s{checksum:[^)]*}{checksum: \"$CHECKSUM\"}g" Package.swift