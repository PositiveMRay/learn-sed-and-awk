# use_a_comma_for_awk.sh

if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

FILE=$1

if [ ! -f $FILE ]; then
  echo "The file $FILE does not exist."
  exit 1
fi

awk -F, '{print $1 }' $FILE
