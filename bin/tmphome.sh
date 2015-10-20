#!/bin/sh

home_dir=/home/raviqqe


# main routine

tmp_home_dir=/tmp/$home_dir

copy_all_contents() {
  for file in $(find "$1" -maxdepth 1 -mindepth 1)
  do
    cp -a "$file" "$2"
  done
}

mkdir -p "$tmp_home_dir"
copy_all_contents "$home_dir" "$tmp_home_dir"
mount -t tmpfs -o size=512m tmpfs "$home_dir"
copy_all_contents "$tmp_home_dir" "$home_dir"

