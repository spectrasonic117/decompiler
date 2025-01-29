# JarDecompiler

A simple bash script to decompile Java JAR files using Fernflower.

## Overview

This project provides a command-line tool, `jardecompiler`, to decompile Java JAR files. It automatically downloads Fernflower if it's not already present, decompiles the provided JAR, extracts its contents, and opens the output directory.

## Files

-   `jardecompiler`: A wrapper script that executes `jardecompiler.sh`.
-   `jardecompiler.sh`: The main script that performs the decompilation process.
-   `makefile`: A makefile to install and uninstall the `jardecompiler` script

## Usage

1.  **Installation:**
    ```bash
    sudo make install
    ```
    This will install the `jardecompiler` script to `/usr/local/bin` and the script to `/opt/jardecompiler`
2.  **Usage:**

    ```bash
    jardecompiler <path/to/your/jarfile.jar>
    ```

    This will:

    -   Download Fernflower if it is not available in the `$HOME/binaries` directory.
    -   Decompile the specified JAR file into a directory with the same name (without the extension) in the current directory.
    -   Extract the original JAR file contents into the decompiled directory.
    -   Open the output directory in your system's default file browser.
