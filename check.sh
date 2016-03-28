rm -rf results-opt
if [ "$#" -ne 2 ]; then
  echo "run.sh <opt> <main.native>"
  exit 0
fi
python test.py -e $1 -v $2 -r "-instcombine" -o -i "inputs_full"
python listfails.py -f results-opt
python statistics.py -f results-opt -o
