# sub_comma_Massachussetts_for_MA.sh

# Ensure the file name is provided.
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

FILE="$1"

if [ ! -f $FILE ] ; then
  echo "Error: File '$FILE' does not exist."
  exit 1
fi

# using sed.
sed 's/ MA/, Massachussetts/' $FILE

echo "Done!"
