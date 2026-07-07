#!/bin/bash

echo "applying cbash patches..."
for patch in patches/cbash/*.patch; do
    echo "Applying patch: $patch"
    git -C deps/cbash apply "../../$patch"
done