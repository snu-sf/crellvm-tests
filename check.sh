if [ "$#" -ne 2 ]; then
  echo "run.sh <opt> <main.native>"
  exit 0
fi
BASEDIR=$(dirname "$0")

rm -rf $BASEDIR/results-opt

python $BASEDIR/test.py -e $1 -v $2 -r "-instcombine" -o -i "$BASEDIR/inputs_full" -c -s "$BASEDIR/results-opt"
python $BASEDIR/listfails.py -f $BASEDIR/results-opt
python $BASEDIR/statistics.py -f $BASEDIR/results-opt -o
