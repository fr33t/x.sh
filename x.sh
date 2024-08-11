#!/bin/bash
# author: fb0sh@outlook.com
file_path=$1
line="###############################"

# file
_file() {
        echo "$line File Type $line"
        echo "$(file $file_path | awk -F: '{print $1 ": \x1b[32m" $2 "\x1b[0m"}')"
        echo -e "\n"
}

# strings
_strings() {
        echo "$line Strings-Default $line"
        echo "$(strings -a $file_path)"

        echo "$line Strings-Flag $line"
        echo "$(strings $file_path | grep "{.*}")"

        echo "$line Strings-Base_encode $line"
        echo "$(strings $file_path | grep "[A-Za-z0-9/+=]|[A-Z2-7=]|[A-F0-9=]")"

        echo -e "\n"

}

# hexdump
_hexdump() {
        echo "$line Hex Dump $line"
        echo "$(hexdump -C $file_path)"
        echo -e "\n"

}

# exiftool
_exiftool() {
        echo "$line Exiftool $line"
        echo "$(exiftool $file_path | sed -e 's/^XP Comment.*/\x1b[32m&\x1b[0m/')"
        echo -e "\n"
}

# binwalk & foremost
_extract() {
        echo "$line Binwalk $line"
        out_dir="$file_path._binwalk"
        echo "$(binwalk -e $file_path -C $out_dir)"
        echo -e "\n"

        echo "$line Foremost $line"
        out_dir="$file_path._foremost"
        echo "$(foremost -v -i $file_path -o $out_dir)"

        echo -e "\n"

}
if [ ! $file_path ]; then
        echo "Usage: $0 file_path"
        exit 1
fi

if [ -f $file_path ]; then
        _hexdump
        _strings
        _file
        _exiftool
        _extract
else
        echo "$file_path does not exist"
fi
