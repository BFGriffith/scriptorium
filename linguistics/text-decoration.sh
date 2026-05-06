#!/opt/homebrew/bin/bash
# ./text-decoration.sh
# will interactively prompt for INPUT "TEXT／text" if not provided when invoking this script, or…
# ./text-decoration.sh "optionally specify input TEXT as argv[1] when invoking this script thusly before／without any interactive prompting"
# ᕕ(ᐛ)ᕗ
# Ignoring＆preserving any characters that don’t match uppercase "A-Z" or lowercase "a-z" standard Latin alphabet letters…
# This Shell script converts standard Latin alphabet input "TEXT／text" into whichever one of the following text-decoration options is specifed:
# 𝐬𝐞𝐫𝐢𝐟𝐁𝐎𝐋𝐃, 𝒊𝒕𝒂𝒍𝒊𝒄𝑩𝑶𝑳𝑫𝒔𝒆𝒓𝒊𝒇, 𝗦𝗔𝗡𝗦𝘀𝗲𝗿𝗶𝗳𝗕𝗢𝗟𝗗, 𝙞𝙩𝙖𝙡𝙞𝙘𝙎𝘼𝙉𝙎𝙨𝙚𝙧𝙞𝙛𝘽𝙊𝙇𝘿, 𝖲𝖠𝖭𝖲𝗌𝖾𝗋𝗂𝖿, 𝘪𝘵𝘢𝘭𝘪𝘤𝘚𝘈𝘕𝘚𝘴𝘦𝘳𝘪𝘧, 𝓑𝓞𝓛𝓓𝓼𝓬𝓻𝓲𝓹𝓽, 𝕭𝕺𝕷𝕯𝖋𝖗𝖆𝖐𝖙𝖚𝖗
# https://en.wikipedia.org/wiki/Mathematical_Alphanumeric_Symbols
# ❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢
export LANG=en_US.UTF-8 #ensure UTF-8 compatibility
export LC_ALL=en_US.UTF-8
# may need gsed package in some environments… On Mac:
# brew install gnu-sed
if command -v gsed &>/dev/null; then
  SED=gsed
else
  SED=sed
fi
DECORATION_SPECIFIED="specified" # variable for storing OUTPUT result display of selected text-decoration style…
# ƒunction to convert input "TEXT／text" into mathematical 𝐁𝐎𝐋𝐃 𝐬𝐞𝐫𝐢𝐟 alphabetic characters
convert_to_BOLDserif() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝐀/;s/B/𝐁/;s/C/𝐂/;s/D/𝐃/;s/E/𝐄/;s/F/𝐅/;s/G/𝐆/;s/H/𝐇/;s/I/𝐈/;s/J/𝐉/;s/K/𝐊/;s/L/𝐋/;s/M/𝐌/;s/N/𝐍/;s/O/𝐎/;s/P/𝐏/;s/Q/𝐐/;s/R/𝐑/;s/S/𝐒/;s/T/𝐓/;s/U/𝐔/;s/V/𝐕/;s/W/𝐖/;s/X/𝐗/;s/Y/𝐘/;s/Z/𝐙/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝐚/;s/b/𝐛/;s/c/𝐜/;s/d/𝐝/;s/e/𝐞/;s/f/𝐟/;s/g/𝐠/;s/h/𝐡/;s/i/𝐢/;s/j/𝐣/;s/k/𝐤/;s/l/𝐥/;s/m/𝐦/;s/n/𝐧/;s/o/𝐨/;s/p/𝐩/;s/q/𝐪/;s/r/𝐫/;s/s/𝐬/;s/t/𝐭/;s/u/𝐮/;s/v/𝐯/;s/w/𝐰/;s/x/𝐱/;s/y/𝐲/;s/z/𝐳/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into mathematical 𝒊𝒕𝒂𝒍𝒊𝒄＋𝑩𝑶𝑳𝑫 𝒔𝒆𝒓𝒊𝒇 alphabetic characters
convert_to_italicBOLDserif() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝑨/;s/B/𝑩/;s/C/𝑪/;s/D/𝑫/;s/E/𝑬/;s/F/𝑭/;s/G/𝑮/;s/H/𝑯/;s/I/𝑰/;s/J/𝑱/;s/K/𝑲/;s/L/𝑳/;s/M/𝑴/;s/N/𝑵/;s/O/𝑶/;s/P/𝑷/;s/Q/𝑸/;s/R/𝑹/;s/S/𝑺/;s/T/𝑻/;s/U/𝑼/;s/V/𝑽/;s/W/𝑾/;s/X/𝑿/;s/Y/𝒀/;s/Z/𝒁/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝒂/;s/b/𝒃/;s/c/𝒄/;s/d/𝒅/;s/e/𝒆/;s/f/𝒇/;s/g/𝒈/;s/h/𝒉/;s/i/𝒊/;s/j/𝒋/;s/k/𝒌/;s/l/𝒍/;s/m/𝒎/;s/n/𝒏/;s/o/𝒐/;s/p/𝒑/;s/q/𝒒/;s/r/𝒓/;s/s/𝒔/;s/t/𝒕/;s/u/𝒖/;s/v/𝒗/;s/w/𝒘/;s/x/𝒙/;s/y/𝒚/;s/z/𝒛/')";;
      *)
        result+="$char";;
      esac
    done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into mathematical 𝗦𝗔𝗡𝗦-𝘀𝗲𝗿𝗶𝗳 𝗕𝗢𝗟𝗗 alphabetic characters
convert_to_SANSserifBOLD() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝗔/;s/B/𝗕/;s/C/𝗖/;s/D/𝗗/;s/E/𝗘/;s/F/𝗙/;s/G/𝗚/;s/H/𝗛/;s/I/𝗜/;s/J/𝗝/;s/K/𝗞/;s/L/𝗟/;s/M/𝗠/;s/N/𝗡/;s/O/𝗢/;s/P/𝗣/;s/Q/𝗤/;s/R/𝗥/;s/S/𝗦/;s/T/𝗧/;s/U/𝗨/;s/V/𝗩/;s/W/𝗪/;s/X/𝗫/;s/Y/𝗬/;s/Z/𝗭/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝗮/;s/b/𝗯/;s/c/𝗰/;s/d/𝗱/;s/e/𝗲/;s/f/𝗳/;s/g/𝗴/;s/h/𝗵/;s/i/𝗶/;s/j/𝗷/;s/k/𝗸/;s/l/𝗹/;s/m/𝗺/;s/n/𝗻/;s/o/𝗼/;s/p/𝗽/;s/q/𝗾/;s/r/𝗿/;s/s/𝘀/;s/t/𝘁/;s/u/𝘂/;s/v/𝘃/;s/w/𝘄/;s/x/𝘅/;s/y/𝘆/;s/z/𝘇/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into mathematical 𝙞𝙩𝙖𝙡𝙞𝙘 𝙎𝘼𝙉𝙎-𝙨𝙚𝙧𝙞𝙛 𝘽𝙊𝙇𝘿 alphabetic characters
convert_to_italicSANSserifBOLD() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝘼/;s/B/𝘽/;s/C/𝘾/;s/D/𝘿/;s/E/𝙀/;s/F/𝙁/;s/G/𝙂/;s/H/𝙃/;s/I/𝙄/;s/J/𝙅/;s/K/𝙆/;s/L/𝙇/;s/M/𝙈/;s/N/𝙉/;s/O/𝙊/;s/P/𝙋/;s/Q/𝙌/;s/R/𝙍/;s/S/𝙎/;s/T/𝙏/;s/U/𝙐/;s/V/𝙑/;s/W/𝙒/;s/X/𝙓/;s/Y/𝙔/;s/Z/𝙕/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝙖/;s/b/𝙗/;s/c/𝙘/;s/d/𝙙/;s/e/𝙚/;s/f/𝙛/;s/g/𝙜/;s/h/𝙝/;s/i/𝙞/;s/j/𝙟/;s/k/𝙠/;s/l/𝙡/;s/m/𝙢/;s/n/𝙣/;s/o/𝙤/;s/p/𝙥/;s/q/𝙦/;s/r/𝙧/;s/s/𝙨/;s/t/𝙩/;s/u/𝙪/;s/v/𝙫/;s/w/𝙬/;s/x/𝙭/;s/y/𝙮/;s/z/𝙯/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into mathematical 𝖲𝖠𝖭𝖲-𝗌𝖾𝗋𝗂𝖿 alphabetic characters
convert_to_SANSserif() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝖠/;s/B/𝖡/;s/C/𝖢/;s/D/𝖣/;s/E/𝖤/;s/F/𝖥/;s/G/𝖦/;s/H/𝖧/;s/I/𝖨/;s/J/𝖩/;s/K/𝖪/;s/L/𝖫/;s/M/𝖬/;s/N/𝖭/;s/O/𝖮/;s/P/𝖯/;s/Q/𝖰/;s/R/𝖱/;s/S/𝖲/;s/T/𝖳/;s/U/𝖴/;s/V/𝖵/;s/W/𝖶/;s/X/𝖷/;s/Y/𝖸/;s/Z/𝖹/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝖺/;s/b/𝖻/;s/c/𝖼/;s/d/𝖽/;s/e/𝖾/;s/f/𝖿/;s/g/𝗀/;s/h/𝗁/;s/i/𝗂/;s/j/𝗃/;s/k/𝗄/;s/l/𝗅/;s/m/𝗆/;s/n/𝗇/;s/o/𝗈/;s/p/𝗉/;s/q/𝗊/;s/r/𝗋/;s/s/𝗌/;s/t/𝗍/;s/u/𝗎/;s/v/𝗏/;s/w/𝗐/;s/x/𝗑/;s/y/𝗒/;s/z/𝗓/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into mathematical 𝘪𝘵𝘢𝘭𝘪𝘤 𝘚𝘈𝘕𝘚-𝘴𝘦𝘳𝘪𝘧 alphabetic characters
convert_to_italicSANSserif() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝘈/;s/B/𝘉/;s/C/𝘊/;s/D/𝘋/;s/E/𝘌/;s/F/𝘍/;s/G/𝘎/;s/H/𝘏/;s/I/𝘐/;s/J/𝘑/;s/K/𝘒/;s/L/𝘓/;s/M/𝘔/;s/N/𝘕/;s/O/𝘖/;s/P/𝘗/;s/Q/𝘘/;s/R/𝘙/;s/S/𝘚/;s/T/𝘛/;s/U/𝘜/;s/V/𝘝/;s/W/𝘞/;s/X/𝘟/;s/Y/𝘠/;s/Z/𝘡/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝘢/;s/b/𝘣/;s/c/𝘤/;s/d/𝘥/;s/e/𝘦/;s/f/𝘧/;s/g/𝘨/;s/h/𝘩/;s/i/𝘪/;s/j/𝘫/;s/k/𝘬/;s/l/𝘭/;s/m/𝘮/;s/n/𝘯/;s/o/𝘰/;s/p/𝘱/;s/q/𝘲/;s/r/𝘳/;s/s/𝘴/;s/t/𝘵/;s/u/𝘶/;s/v/𝘷/;s/w/𝘸/;s/x/𝘹/;s/y/𝘺/;s/z/𝘻/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into 𝓑𝓞𝓛𝓓 𝓼𝓬𝓻𝓲𝓹𝓽 alphabetic characters
convert_to_BOLDscript() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝓐/;s/B/𝓑/;s/C/𝓒/;s/D/𝓓/;s/E/𝓔/;s/F/𝓕/;s/G/𝓖/;s/H/𝓗/;s/I/𝓘/;s/J/𝓙/;s/K/𝓚/;s/L/𝓛/;s/M/𝓜/;s/N/𝓝/;s/O/𝓞/;s/P/𝓟/;s/Q/𝓠/;s/R/𝓡/;s/S/𝓢/;s/T/𝓣/;s/U/𝓤/;s/V/𝓥/;s/W/𝓦/;s/X/𝓧/;s/Y/𝓨/;s/Z/𝓩/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝓪/;s/b/𝓫/;s/c/𝓬/;s/d/𝓭/;s/e/𝓮/;s/f/𝓯/;s/g/𝓰/;s/h/𝓱/;s/i/𝓲/;s/j/𝓳/;s/k/𝓴/;s/l/𝓵/;s/m/𝓶/;s/n/𝓷/;s/o/𝓸/;s/p/𝓹/;s/q/𝓺/;s/r/𝓻/;s/s/𝓼/;s/t/𝓽/;s/u/𝓾/;s/v/𝓿/;s/w/𝔀/;s/x/𝔁/;s/y/𝔂/;s/z/𝔃/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into ornate mathematical 𝕭𝕺𝕷𝕯 𝖋𝖗𝖆𝖐𝖙𝖚𝖗 alphabetic characters
convert_to_BOLDfraktur() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝕬/;s/B/𝕭/;s/C/𝕮/;s/D/𝕯/;s/E/𝕰/;s/F/𝕱/;s/G/𝕲/;s/H/𝕳/;s/I/𝕴/;s/J/𝕵/;s/K/𝕶/;s/L/𝕷/;s/M/𝕸/;s/N/𝕹/;s/O/𝕺/;s/P/𝕻/;s/Q/𝕼/;s/R/𝕽/;s/S/𝕾/;s/T/𝕿/;s/U/𝖀/;s/V/𝖁/;s/W/𝖂/;s/X/𝖃/;s/Y/𝖄/;s/Z/𝖅/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝖆/;s/b/𝖇/;s/c/𝖈/;s/d/𝖉/;s/e/𝖊/;s/f/𝖋/;s/g/𝖌/;s/h/𝖍/;s/i/𝖎/;s/j/𝖏/;s/k/𝖐/;s/l/𝖑/;s/m/𝖒/;s/n/𝖓/;s/o/𝖔/;s/p/𝖕/;s/q/𝖖/;s/r/𝖗/;s/s/𝖘/;s/t/𝖙/;s/u/𝖚/;s/v/𝖛/;s/w/𝖜/;s/x/𝖝/;s/y/𝖞/;s/z/𝖟/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}
# ƒunction to convert input "TEXT／text" into 𝙼𝙾𝙽𝙾𝚂𝙿𝙰𝙲𝙴 alphabetic characters
convert_to_monospace() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | $SED 's/A/𝙰/;s/B/𝙱/;s/C/𝙲/;s/D/𝙳/;s/E/𝙴/;s/F/𝙵/;s/G/𝙶/;s/H/𝙷/;s/I/𝙸/;s/J/𝙹/;s/K/𝙺/;s/L/𝙻/;s/M/𝙼/;s/N/𝙽/;s/O/𝙾/;s/P/𝙿/;s/Q/𝚀/;s/R/𝚁/;s/S/𝚂/;s/T/𝚃/;s/U/𝚄/;s/V/𝚅/;s/W/𝚆/;s/X/𝚇/;s/Y/𝚈/;s/Z/𝚉/')";;
      [a-z])
        result+="$(echo "$char" | $SED 's/a/𝚊/;s/b/𝚋/;s/c/𝚌/;s/d/𝚍/;s/e/𝚎/;s/f/𝚏/;s/g/𝚐/;s/h/𝚑/;s/i/𝚒/;s/j/𝚓/;s/k/𝚔/;s/l/𝚕/;s/m/𝚖/;s/n/𝚗/;s/o/𝚘/;s/p/𝚙/;s/q/𝚚/;s/r/𝚛/;s/s/𝚜/;s/t/𝚝/;s/u/𝚞/;s/v/𝚟/;s/w/𝚠/;s/x/𝚡/;s/y/𝚢/;s/z/𝚣/')";;
      [0-9])
        result+="$(echo "$char" | $SED 's/0/𝟶/;s/1/𝟷/;s/2/𝟸/;s/3/𝟹/;s/4/𝟺/;s/5/𝟻/;s/6/𝟼/;s/7/𝟽/;s/8/𝟾/;s/9/𝟿/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# PROMPT user for input "TEXT／text" if none was provided as argv[1]…
get_TEXT_input() {
  if [ -z "$1" ]; then
    read -p "🖖 Please enter some text to be decorated: " input_text
  else
    input_text="$1"
  fi
}

# EXECUTE SCRIPT 📋
get_TEXT_input "$1" # capture "TEXT／text" input

# PROMPT for desired text-decoration option…
echo "To specify your text-decoration option, please type only ONE alias without any quotes, then press the Return／Enter key ⎆"
echo "⬐-⏝(ò⩊ó)_/¯ "
echo "For 𝐁𝐎𝐋𝐃 𝐬𝐞𝐫𝐢𝐟 mathematical letters, enter one of these aliases꞉ “sb”／“SB” or “sB” or “bs”／“BS” or “bS” ⎆"
echo "For 𝒊𝒕𝒂𝒍𝒊𝒄＋𝑩𝑶𝑳𝑫 𝒔𝒆𝒓𝒊𝒇 mathematical letters, enter one of these aliases꞉ “ib”／“IB” or “iB” or “sib”／“sIB”／“Sib” or “ibs”／“IBS” or “ibS” ⎆"
echo "For 𝗕𝗢𝗟𝗗 𝗦𝗔𝗡𝗦-𝘀𝗲𝗿𝗶𝗳 mathematical letters, enter one of these aliases꞉ “ssb”／“SSB” or “ssB” ⎆"
echo "For 𝘽𝙊𝙇𝘿＋𝙞𝙩𝙖𝙡𝙞𝙘 𝙎𝘼𝙉𝙎-𝙨𝙚𝙧𝙞𝙛 mathematical letters, enter one of these aliases꞉ “ssbi”／“SSBI” or “ssBI” or “ibss”／“IBSS” or “ibSS”／“ssIB” ⎆"
echo "For 𝖲𝖠𝖭𝖲-𝗌𝖾𝗋𝗂𝖿 mathematical letters, enter one of these aliases꞉ “ss”／“SS” ⎆"
echo "For 𝘪𝘵𝘢𝘭𝘪𝘤 𝘚𝘈𝘕𝘚-𝘴𝘦𝘳𝘪𝘧 mathematical letters, enter one of these aliases꞉ “ssi”／“SSI” or “ssI” or “iss”／“ISS” or “iSS” ⎆"
echo "For 𝓑𝓞𝓛𝓓 𝓼𝓬𝓻𝓲𝓹𝓽 mathematical calligraphic letters, enter one of these aliases꞉ “scr”／“SCR” or “bSCR”／“Bscr” ⎆"
echo "For 𝕭𝕺𝕷𝕯 𝖋𝖗𝖆𝖐𝖙𝖚𝖗 mathematical ornate letters, enter one of these aliases꞉ “bf”／“BF” or “bF” ⎆"
echo "For 𝙼𝙾𝙽𝙾𝚂𝙿𝙰𝙲𝙴 letters or numbers, enter one of these aliases꞉ “mono” or “monospace” ⎆"
echo "¯\_(ツ)_/¯ "
read -p "How would you like to decorate your text‽ " choice

# Execute selected conversion…
case "$choice" in
  sb|SB|sB|bs|BS|bS)
    DECORATION_SPECIFIED="𝐁𝐎𝐋𝐃 𝐬𝐞𝐫𝐢𝐟"
    result=$(convert_to_BOLDserif "$input_text");;
  ib|IB|iB|sib|sIB|Sib|ibs|IBS|ibS)
    DECORATION_SPECIFIED="𝒊𝒕𝒂𝒍𝒊𝒄＋𝑩𝑶𝑳𝑫 𝒔𝒆𝒓𝒊𝒇"
    result=$(convert_to_italicBOLDserif "$input_text");;
  ssb|SSB|ssB)
    DECORATION_SPECIFIED="𝗕𝗢𝗟𝗗 𝗦𝗔𝗡𝗦-𝘀𝗲𝗿𝗶𝗳"
    result=$(convert_to_SANSserifBOLD "$input_text");;
  ssbi|SSBI|ssBI|ibss|IBSS|ibSS|ssIB)
    DECORATION_SPECIFIED="𝘽𝙊𝙇𝘿＋𝙞𝙩𝙖𝙡𝙞𝙘 𝙎𝘼𝙉𝙎-𝙨𝙚𝙧𝙞𝙛"
    result=$(convert_to_italicSANSserifBOLD "$input_text");;
  ss|SS)
    DECORATION_SPECIFIED="𝖲𝖠𝖭𝖲-𝗌𝖾𝗋𝗂𝖿"
    result=$(convert_to_SANSserif "$input_text");;  
  ssi|SSI|ssI|iss|iSS)
    DECORATION_SPECIFIED="𝘪𝘵𝘢𝘭𝘪𝘤 𝘚𝘈𝘕𝘚-𝘴𝘦𝘳𝘪𝘧"
    result=$(convert_to_italicSANSserif "$input_text");;
  scr|SCR|bSCR|Bscr|BSCR)
    DECORATION_SPECIFIED="𝓑𝓞𝓛𝓓 𝓼𝓬𝓻𝓲𝓹𝓽"
    result=$(convert_to_BOLDscript "$input_text");;
  bf|BF|bF)
    DECORATION_SPECIFIED="𝕭𝕺𝕷𝕯 𝖋𝖗𝖆𝖐𝖙𝖚𝖗"
    result=$(convert_to_BOLDfraktur "$input_text");;
  mono|monospace)
    DECORATION_SPECIFIED="𝙼𝙾𝙽𝙾𝚂𝙿𝙰𝙲𝙴"
    result=$(convert_to_monospace "$input_text");;
  *)
    echo "⚠️ You have entered an invalid text-decoration option selection alias…"
    echo "⛔Exiting program❗🪦"
    exit 1;;
esac

# copy result to clipboard in case of Linux or MacOS: 📋
if [[ "$OSTYPE" == "Linux" || "$OSTYPE" == "linux-gnu"* ]]; then
  if which xclip &> /dev/null; then
    echo "${result}" | xclip -sel clip
  fi 
elif [[ $OSTYPE == 'darwin'* ]]; then
  if which pbcopy &> /dev/null; then
    echo "$result" | pbcopy
  fi
fi
if pbpaste | grep -q "$result"; then
  echo "📋 Copied result to clipboard successfully…"
else
  echo "⛔ ERROR: failed to copy result to clipboard❗"
fi
# OUTPUT result: 🖥️
echo " "
echo "Converted input with ${DECORATION_SPECIFIED} text-decoration applied is as follows…"
echo " "
echo $result
echo " "
