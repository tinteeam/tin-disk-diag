#!/bin/bash
set -e

# Clean up the root source directory and remove binaries.
echo "Cleaning up dependencies(removing them)..."
rm -rf deps/

echo "cleaning up binaries..."
make clean
make -C distro/init clean

echo "Done cleaned up root source."