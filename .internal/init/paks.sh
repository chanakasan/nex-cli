for f in $nx_root/pak/*.pak; do
  tmp_file=$f/.internal/entry.sh
  if [ -f "$tmp_file" ]; then
    source $tmp_file
  fi
done
