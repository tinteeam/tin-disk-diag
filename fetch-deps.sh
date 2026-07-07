set -e

echo "Fetching dependencies..."
git clone https://github.com/tinteeam/cbash.git deps/cbash

echo "Done fetching dependencies. please patch the dependencies using patches/*.patch"