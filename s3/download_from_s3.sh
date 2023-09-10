#! /bin/bash

s3_ls=$(aws s3 ls s3://backofficefiles | sed -e "s/[^0-9]*//")

file_list=()

while IFS= read -r line;do
  if [ -n "$line" ]; then
    file_list+=("$line")
  fi
done <<< "$s3_ls"

array_length=${#file_list[@]}
chunk_size=5
num_chunks=$(( (array_length + chunk_size -1) / chunk_size ))
for ((i = 0; i < num_chunks ;i++));do
  start=$((i * chunk_size))
  end=$((start + chunk_size))
  chunk=("${file_list[@]:start:chunk_size}")
  for (( j=0; j< ${#chunk[@]}; j++ ));do
     echo "${chunk[j]}"
     aws s3 sync s3://backofficefiles/"${chunk[j]}" auction/"${chunk[j]}" &
  done
  echo "Chunk $i: ${chunk[*]}"
  wait
done

