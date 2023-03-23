#!/bin/bash

# function to convert each Cyrillic character to its Latin alphabet equivalent
function convert_char {
    case $1 in
        а) echo -n "a";;
        б) echo -n "b";;
        в) echo -n "v";;
        г) echo -n "g";;
        д) echo -n "d";;
        е) echo -n "e";;
        ё) echo -n "ë";;
        ж) echo -n "ž";;
        з) echo -n "z";;
        и) echo -n "i";;
        й) echo -n "j";;
        к) echo -n "k";;
        л) echo -n "l";;
        м) echo -n "m";;
        н) echo -n "n";;
        о) echo -n "o";;
        п) echo -n "p";;
        р) echo -n "r";;
        с) echo -n "s";;
        т) echo -n "t";;
        у) echo -n "u";;
        ф) echo -n "f";;
        х) echo -n "h";;
        ц) echo -n "c";;
        ч) echo -n "č";;
        ш) echo -n "š";;
        щ) echo -n "š"; echo -n "č";;
        ъ) echo -n "ʺ";;
        ы) echo -n "y";;
        ь) echo -n "è";;
        э) echo -n "è";;
        ю) echo -n "û";;
        я) echo -n "â";;
        *) echo -n $1;;
    esac
}

# Define a function to convert a single Latin alphabet character to its Cyrillic alphabet equivalent
function convert_char_to_cyrillic {
    case $1 in
        a) echo -n "а";;
        b) echo -n "б";;
        v) echo -n "в";;
        g) echo -n "г";;
        d) echo -n "д";;
        e) echo -n "е";;
        ë) echo -n "ё";;
        ž) echo -n "ж";;
        z) echo -n "з";;
        i) echo -n "и";;
        j) echo -n "й";;
        k) echo -n "к";;
        l) echo -n "л";;
        m) echo -n "м";;
        n) echo -n "н";;
        o) echo -n "о";;
        p) echo -n "п";;
        r) echo -n "р";;
        s) echo -n "с";;
        t) echo -n "т";;
        u) echo -n "у";;
        f) echo -n "ф";;
        h) echo -n "х";;
        c) echo -n "ц";;
        č) echo -n "ч";;
        š) echo -n "ш";;
        y) echo -n "ы";;
        è) echo -n "ь";;
        ê) echo -n "э";;
        û) echo -n "ю";;
        â) echo -n "я";;
        *) echo -n $
    esac
}


# check if there is at least one argument passed to the script
if [ $# -eq 0 ]
then
  echo "Usage: $0 <text>"
  exit 1
fi

# store the first argument in the variable 'text'
text="$1"

# loop through each character in the input text and convert it to its Latin alphabet equivalent
for ((i=0; i<${#text}; i++)); do
    char=${text:$i:1}
    latin_char=$(convert_char $char)
    echo -n $latin_char
done

echo "" # print a newline at the end
