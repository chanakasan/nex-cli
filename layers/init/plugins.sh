for f in $nx_root/plugin/*.plugin; do
  tmp_file=$f/.internal/entry.sh
  if [ -f "$tmp_file" ]; then
    source $tmp_file
  fi
done
