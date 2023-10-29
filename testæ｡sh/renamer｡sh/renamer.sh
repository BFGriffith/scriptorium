#!/bin/sh
# ./renamer.sh
# bulk renaming convenience script
# ❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢
# Libre ©️opyLeft: released under GNU Affero General Public License, version 3
# https://www.gnu.org/licenses/agpl-3.0.en.html
# ❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢
# ⌥Optional ⌘Arguments can be specified separated by spaces when invoking this script:
# argv[1]＝“target” substring
# argv[2]＝“replacement” substring
# argv[3]＝file extension
# argv[4]＝target directory (defaults to current working directory)
# ${ARGV[ℹ️]} ⚙️ ⟦only the first two arguments are required⟧

# text colors’ ANSI escape codes
BLACK=$'\e[30m'
darkGRAY=$'\e[1;30m' # bold dark gray
lightGray=$'\e[37m' # light gray
RED=$'\e[31m'
lightRED=$'\e[1;31m' # bold bright “error” RED
GREEN=$'\e[32m'
lightGREEN=$'\e[1;32m' # lighter softer GREEN
YELLOW=$'\e[1;33m'
BLUE=$'\e[34m'
lightBLUE=$'\e[1;34m' # lighter softer BLUE
PURPLE=$'\e[35m'
lightPURPLE=$'\e[1;35m' # light “eggplant” PURPLE
CYAN=$'\e[36m'
lightCYAN=$'\e[1;36m' # light “iceberg” CYAN
WHITE=$'\e[1;37m'
endCOLOR=$'\e[0m'

# initial VARIABLES:
USER=$LOGNAME # username
OS=$OSTYPE # operating system
WORKING_DIRECTORY=$(pwd) # store current working directory
filenameMatches=() # “target”🎯 matches storage array
printf "%b\n" "Welcome ${PURPLE}${OS}${endCOLOR} user ${CYAN}${USER}${endCOLOR}…🖖" 
INITIALIZATION_MESSAGE="Let’s rename some pesky files!"
printf "%b\n" "$INITIALIZATION_MESSAGE\n"

# https://www.shell-tips.com/bash/arrays/

# argv[1]＝“target”🎯 substring
if [ -z ${1+noTargetQuarry} ]; # 🚩TRUE if argv[1] was not specified
then
	printf "%b\n" "Please specify the TARGET🎯 substring for this operation to replace, then press ENTER."
	read TARGET_QUARRY
	printf "%b\n" "substring 🎯 ＝ ${RED}${TARGET_QUARRY}${endCOLOR}\n"
else
	printf "%b\n" "substring 🎯 ＝ ${RED}${1}${endCOLOR}\n"
	TARGET_QUARRY=$1
fi
# argv[2]＝“replacement” substring
if [ -z ${2+noReplacementQuarry} ]; # 🚩TRUE if argv[2] was not specified
then
	printf "%b\n" "Please specify the REPLACEMENT substring for this operation to substitute, then press ENTER."
	read REPLACEMENT_SUBSTRING
	printf "%b\n" "REPLACEMENT／substitution specified ＝ ${GREEN}${REPLACEMENT_SUBSTRING}${endCOLOR}\n"
else
	printf "%b\n" "REPLACEMENT／substitution specified ＝ ${GREEN}${2}${endCOLOR}\n"
	REPLACEMENT_SUBSTRING=$2
fi
# argv[3]＝file extension
if [ -z ${3+noFileExtension} ]; # 🚩TRUE if argv[3] was not specified
then
	printf "%b\n" "Please specify the file extension, then press ENTER."
	read FILE_EXTENSION
	if [[ "$FILE_EXTENSION" =~ ^\..*  ]]; then
    echo "yes ."
	fi
	printf "%b\n" "File Extension specified ＝ ${darkGRAY}${FILE_EXTENSION}${endCOLOR}\n"
else
	printf "%b\n" "File Extension specified ＝ ${darkGRAY}${3}${endCOLOR}\n"
	FILE_EXTENSION=$3
fi



printf "%b\n" "The currently initialized directive" \
"for this operation will be to" \
"replace any filename substrings including:\n" \
"\t“${RED}${TARGET}${endCOLOR}”\n" \
"with:\n" \
"\t“${GREEN}${REPLACEMENT}${endCOLOR}”\n" \
"in:\n" \
"\t${BLUE}${WORKING_DIRECTORY}${endCOLOR}\n"
printf "%b\n" "${blu}Is that correct?${endCOLOR}"


# select area in area1 area2 area3
# do
#   case $area in 
#   area1|area2|area3)   
#     break
#     ;;
#   *)
#     echo "Invalid area" 
#     ;;
#   esac
# done
# echo 'Now pick a place based on the area you chose'
# select place in place1 place2 place3
# do
#   case $place in
#   place1|place2|place3)
#     break
#     ;;
#   *)
#     echo "Invalid place"
#     ;;
#   esac
# done
# echo "Based on $area and $place here is what you need..."



# FILES=($(ls *.$EXTENSION)) # convert filenames to an array
# for F in "${FILES[@]}"; do
# 	LM=$(date -r $F)
# 	printf "%b\n" "$F" "${LM}"
# done

# findAndGrep() { find . -type f -iname "$1" -exec grep -Hi "$2" '{}' + }

# grep "pattern" . -airn --include="file.txt"

<<'#BLOCK-COMMENT'
--exclude=GLOB
  Skip  files  whose  base  name  matches  GLOB  (using   wildcard matching).
  A file-name glob can use *, ?, and [...] as wildcards,
  and \ to quote a wildcard or backslash character literally.
--exclude-from=FILE
  Skip files whose base name matches any of the file-name globs
  read from FILE (using wildcard matching as described under --exclude).
--exclude-dir=DIR
  Exclude directories matching the pattern DIR from recursive searches.
--include=GLOB
  Search only files whose base name matches GLOB
  (using wildcard matching as described under --exclude).
#BLOCK-COMMENT

QUARRY={}
# find . -name "*${TARGET}*.txt" -type f -exec filenameMatches+=($QUARRY) \; -exec grep -i "pattern" {} \;



# find . -name "*${TARGET}*.txt" -type f -exec echo "{}:" \; -exec grep -i "pattern" {} \;

# That prints the path (relative to the current directory, ., 
#	and including the filename itself) of each file named file.txt,
# followed by all matching lines in the file. This works because {} is a placeholder for the file found. Each file's path is set apart from its contents by being prefixed with #####, and is printed only once, before the matching lines from that file. (Files called file.txt that contain no matches still have their paths printed.)
# You might find this output less cluttered than what you get from methods that print a path at the beginning of every matching line.
# Using find like this will almost always be faster than running grep on every file (grep -arin "pattern" *), because find searches for the files with the correct name and skips all other files.

for value in "${filenameMatches[@]}"; do
	echo "$value"; done


# prompt for permission to proceed
# SHOULDPROCEED=true;
# while $SHOULDPROCEED; do
# 	read -p "Would you like to proceed with renaming these files? ❨Y／n❩ ❧ " CONF
# 	SHOULDPROCEED=false;
# if [ $CONF == 'Y' ]; then
# 	echo "Deleting all files"
# elif [ $CONF == 'n' ]; then
# 	echo "Not deleting files"
# else
# 	echo "Please enter a valid response: either “Y” or “n”";
# 	SHOULDPROCEED=true;
# fi
# done


#sum of array shell script
# arr=(10 20 30 40 50)
# sum=0
# for i in ${arr[@]}
# do
#     sum=`expr $sum + $i`
# done
# echo $sum
# Using ${arr[@]} or ${arr[*]}, we can access the all array elements.


# counter=0
# for i in $FILES;
# do
#   echo Next: $i
#   let counter=$counter+1
#   echo $counter
# done

# for FILE in *.${EXTENSION}
# for var in abc 123 3a b5 934 "" 
# do
#     case $var in
#         "" | *[!0-9]*) echo "\"$var\" is NOT an integer!" ;;
#         *) echo "\"$var\" is an integer."
#     esac
# done
# do
# 	if 
# 	# printf "%b\n" "${CYAN}$FILE${endCOLOR}"
# 	# MATCH=$()
# 	#if  ["$FILE" == [*$TARGET.$EXTENSION || *$TARGET*.$EXTENSION || $TARGET*.$EXTENSION]];
# 	# if [ $(ls *${TARGET}*.${EXTENSION} 2>/dev/null | wc -1) -gt 0 ];
# 	then	printf "%b\n" "${CYAN}$FILE${endCOLOR} matches!";
# 	fi
# done



# divider=❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢
divider=❨⟧⊠⊠⊠⊠⊠⟦❩
divider=$divider$divider

header="\n %-10s %8s %10s %11s\n"
format=" %-10s %08d %10s %11.2f\n"

width=43

# printf "$header" "FILENAME" "ITEM ID" "COLOR" "PRICE"
printf "$header" "FILENAME" "EXTENSION" "CONTAINS" "LAST MODIFIED"

printf "%$width.${width}s\n" "$divider"

printf "$format" \
Triangle 13  red 20 \
Oval 204449 "dark blue" 65.656 \
Square 3145 orange .7


printf "%b\n" "${EXTENSION}" # need to handle with or without .ext

# find . -type f -name "ACDC*" -print0 | while read -r -d '' file; do
# 	mv "$file" "${file//ACDC/AC-DC}"
# done

exit