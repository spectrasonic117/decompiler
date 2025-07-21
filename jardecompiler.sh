#!/usr/bin/env bash

# Script to decompile a Jar file

# Check if Fernflower is installed
if [ ! -f "$HOME/binaries/fernflower.jar" ]; then
    echo "Downloading Fernflower..."
    mkdir -p "$HOME/binaries"
    curl -L -o "$HOME/binaries/fernflower.jar" "https://the.bytecode.club/fernflower.jar"
fi

# Decompile the Jar file
jar_file=$1
output_dir="${jar_file%.*}-decompiled"
bin_path="$HOME/binaries/fernflower.jar"

# Create the output directory
mkdir -p "$PWD/$output_dir"

# Decompile the Jar file and extract contents
java -jar $bin_path -dgs=true $jar_file $PWD/$output_dir && cd $output_dir && jar xf $jar_file && open ./
