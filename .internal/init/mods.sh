for dir in $nx_root/mod/*.mod; do
  if [ -d "$dir" ]; then
    nx_source_folder $dir
  fi
done
