if [[ "$#" -ne 1 ]] 
then
echo "get-lnt-bcfiles.sh <outputdir>"
exit 1
fi

declare -A indices
outputdir=$1
for class in SingleSource MultiSource ; do
  for i in `find $class -depth -name "*.bc"` ; do
    path=${i#*/}
    category=$(echo "$path" | cut -d "/" -f1)
    path=${path#*/}
    # if path contains '/', we have benchmark name
    if [[ "$path" == *\/* ]]
    then
      benchmark=$(echo "$path" | cut -d "/" -f1)
      category="${category}.${benchmark}"
      path=${path#*/}                          
    fi
    category="${class}.${category}"
    path=${path//\//.}

    if [[ "${indices[$category]}" == "" ]]
    then
      indices[$category]=0
    fi
    indices[$category]=$((indices[$category] + 1))
    idx=${indices[$category]}
    path="${idx}.${path}"
    echo "Category : $category, path : $path, org path : $i"

    mkdir ${outputdir}/${category} 2>/dev/null
    if [ -e "${output}/${category}/${path}" ]
    then
      echo "${output}/${category}/${path} already exists"
      exit 1
    fi
    cp $i ${outputdir}/${category}/${path}
  done
done
