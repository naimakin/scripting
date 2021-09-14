for file in *conf; do
  cp -a $file 2-${file%%-*}
done
