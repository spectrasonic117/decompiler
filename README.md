# Jar Decompiler

A simple tool to decompile Jar files using Fernflower.

## Files

-   **makefile**: Used for installing and uninstalling the `jardecompiler` scripts.
-   **jardecompiler**: A wrapper script to execute `jardecompiler.sh`.
-   **jardecompiler.sh**: The main script that downloads Fernflower (if not present) and uses it to decompile the provided Jar file.

## Usage

To decompile a Jar file, run:

```bash
jardecompiler <path_to_your_jar_file.jar>
```

This script will:

1. Download Fernflower if it's not already in `$HOME/binaries/fernflower.jar`.
2. Decompile the specified Jar file into a directory named after the Jar file (without the extension).
3. Extract the contents of the Jar file into the same output directory.
4. Open the output directory.

## Installation

To install the `jardecompiler` tool, run:

```bash
sudo make install
```

This will copy:

-   `jardecompiler` to `/usr/local/bin/jardecompiler`
-   `jardecompiler.sh` to `/opt/jardecompiler/jardecompiler.sh`

And set execute permissions for both scripts.

## Uninstallation

To uninstall the `jardecompiler` tool, run:

```bash
sudo make uninstall
```

This will remove:

-   `/usr/local/bin/jardecompiler`
-   `/opt/jardecompiler` directory
