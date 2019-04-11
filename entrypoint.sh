#!/bin/bash
set -e

#
# If the script is present ..
#
if [ -e $@ ]; then

    # Ensure it is executable.
    chmod 755 $@

    # Run it.
    $@

    # Preserve the exit-code
    exit $?

else

    #
    # Script is missing.
    #
    echo "The passed script does not exist."
    exit 1
fi
