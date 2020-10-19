#!/bin/bash
mkdir -p chapters html
INPUT_FILE="urls.txt"
function assert_installed() {
    for var in "$@"; do
        if ! which $var &> /dev/null; then
            echo "Install $var!"
            exit 1
        fi
    done
}

assert_installed wget pandoc

while IFS= read -r line
do
  echo $line
  FILENAME=$(basename "$line")
  wget --no-clobber --no-verbose --output-document="html/$FILENAME.html" --timeout=10 "$line"
done < "$INPUT_FILE"

bundle exec ruby generate.rb

if [ -f /.dockerenv ]; then
  cp never-say-you-cant-survive.epub /output
fi