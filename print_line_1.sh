# Move to the first line and print the line.
# Note: You can supress the repetition of the second line by piping the output to uniq. 

if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

FILE=$1

if [ ! -f $FILE ]; then
  echo "The file '$FILE' does not exist."
  exit 1
fi

ed -s $FILE << EOF
1
p
EOF
