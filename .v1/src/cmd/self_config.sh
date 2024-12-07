set -e

tmp_file=$(nex _config)
echo "config file"

echo "------------------------"
echo "$(<$tmp_file)"
echo "------------------------"

echo
source $(nex _config)
echo "config eval passed"
echo
