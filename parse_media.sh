#!/bin/bash

# 将 ls 的结果存为数组
files=($(ls slidesbench/examples/))

# 循环遍历
for file in "${files[@]}"; do
    echo "Processing slidesbench/examples/$file/$file.pptx"
    python slidesbench/parse_media.py --slides_path slidesbench/examples/$file/$file.pptx --output_dir slidesbench/examples/$file
done