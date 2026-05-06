#!/bin/bash
# ./cyrillic.sh
# will interactively prompt for INPUT text if not provided, or…
# ./cyrillic.sh "optionally specify input TEXT as argv[1] before／without any interactive prompting"
# ¯\_(ツ)_/¯
# Ignoring＆preserving characters that don’t match uppercase 'A-Z' or lowercase 'a-z' standard Latin alphabet…
# This Shell script converts standard Latin alphabet input TEXT／text to one of the following options:
# Cyrillic, italicCyrillic, earlyCyrillic, 🇷🇺Russian, 🇷🇸Serbian, 🇲🇪Montenegrin, 🇧🇬Bulgarian, fauxCyrillic／pseudoSoviet☭, 🇲🇰Macedonian, 🇬🇷Greek
# ᕕ(ᐛ)ᕗ
# https://en.wikipedia.org/wiki/Cyrillic_alphabets
# https://en.wikipedia.org/wiki/Cyrillic_script
# Slavic‑Cyrillic‑LETTERS꞉
# А А̀ А̂ А̄ Ӓ Б В Г Ґ Д Ђ Ѓ Е Ѐ Е̄ Е̂ Ё Є Ж З З́ Ѕ И І Ї Ꙇ Ѝ И̂ Ӣ Й Ј К Л Љ М Н Њ О О̀ О̂ Ō Ӧ П Р С С́ Т Ћ Ќ У У̀ У̂ Ӯ Ў Ӱ Ф Х Ц Ч Џ Ш Щ Ꙏ Ъ Ъ̀ Ы Ь Ѣ Э Ю Ю̀ Я Я̀
# Non‑Slavic Cyrillic‑alphabets are generally modelled after Russian, but often bear striking differences, particularly when adapted for Caucasian languages…
# non‑Slavic Cyrillic‑LETTERS꞉
# Ӑ А̊ А̃ Ӓ̄ Ӕ Ә Ә́ Ә̃ Ӛ В̌ Ԝ Г̑ Г̇ Г̣ Г̌ Г̂ Г̆ Г̈ Ҕ Ғ Ӻ Ғ̌ Ӷ Г̡ Д́ Д̌ Д̈ Д̣ Д̆ Ӗ Е̃ Ё̄ Є̈ Җ Ӝ Ӂ Ж̣ Ҙ Ӟ З̌ З̣ З̆ Ԑ Ԑ̈ Ӡ И̃ Ӥ Ҋ Қ Ӄ Ҡ Ҟ Ҝ К̣ Ԛ ᴫ Л́ Ӆ Ԯ Ԓ Л̈ Ӎ ᵸ Н́ Ӊ Ң Ԩ Ӈ Ҥ О̆ О̃ Ӧ̄ Ө Ө̄ Ө́ Ө̆ Ӫ Ԥ П̈ Ҧ Р̌ Ҏ С̌ Ҫ С̣ С̱ Т́ Т̈ Т̌ Т̇ Т̣ Ҭ У̃ Ӳ У̊ Ӱ̄ Ұ Ү Ү́ Х̣ Х̱ Х̮ Х̑ Х̌ Ҳ Ӽ Ӿ Һ Һ̈ Ԧ Ц̌ Ц̈ Ҵ Ҷ Ҷ̣ Ӵ Ӌ Ч̡ Ҹ Ч̇ Ч̣ Ҽ Ҿ Ш̈ Ш̣ ꚜ Ы̆ Ы̄ Ӹ ꚝ Ҍ Ҩ Э̆ Э̄ Э̇ Ӭ Ӭ́ Ӭ̄ Ю̆ Ю̈ Ю̄ Я̆ Я̄ Я̈ Ӏ
# Archaic／obsolete Cyrillic‑LETTERS꞉
# А̨ Б̀ Б̣ Б̱ В̀ Г̀ Г̧ Г̄ Г̓ Г̆ Ҕ̀ Ҕ̆ Ԁ Д̓ Д̀ Д̨ Ԃ Ꚁ Ꙣ Е̇ Е̨ Ж̀ Ж̑ Ꙃ Ꙅ Џ̆ Ꚅ Ꚅ̆ Ꙁ З̀ З̑ Ԅ Ԇ Ꚉ Ԫ Ꚃ Ꚕ І̂ І̣ І̨ Ј̵ Ј̃ Ꙉ К̓ К̀ К̆ Ӄ̆ К̑ К̇ К̈ К̄ Ԟ К̂ Л̀ Ԡ Ꙥ Ԉ Л̑ Л̇ Ԕ М̀ М̃ Ꙧ Н̀ Н̄ Н̧ Н̃ Ԋ Ԣ Н̡ Ѻ Ꙩ Ꙫ Ꙭ ꙮ Ꚙ Ꚛ П̓ П̀ П́ П̧ П̑ Ҁ Ԛ̆ Р́ Р̀ Р̃ Ԗ С̀ С̈ Ԍ Ҫ̓ Т̓ Т̀ Ԏ Т̑ Ꚋ Т̧ Ꚍ Ꚍ̆ ОУ Ꙋ У̇ У̨ ꙋ́ Ф̑ Ф̓ Х́ Х̀ Х̆ Х̇ Х̧ Х̓ һ̱ Ѡ Ꙍ Ѽ Ѿ Ꙡ Ц̀ Ц́ Ц̓ Ꚏ Ꚏ̆ Ꚑ Ч́ Ч̀ Ч̆ Ч̑ Ч̓ Ԭ Ꚓ Ꚇ Ꚇ̆ Ҽ̆ Ш̀ Ш̆ Ш̑ Щ̆ Ꚗ Ꚗ̆ Ꙑ Ы̂ Ы̃ Ѣ́ Ѣ̈ Ѣ̆ Ꙓ Э̨ Э̂ Ꙕ Ю̂ Ꙗ Я̈ Я̂ Я̨ Ԙ Ѥ Ѧ Ꙙ Ѫ Ꙛ Ѩ Ꙝ Ѭ Ѯ Ѱ Ѳ Ѵ Ѷ Ꙟ 

# ƒunction converting text to “generic” Cyrillic alphabet
# Аа Бб Вв Гг Дд Ее Ëë Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ьь Ээ Юю Яя
convert_to_Cyrillic() {
  local alphabet="Аа Бб Вв Гг Дд Ее Ëë Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ьь Ээ Юю Яя"
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/Б/;s/C/Ц/;s/D/Д/;s/E/Е/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Ј/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/б/;s/c/ц/;s/d/д/;s/e/е/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/ј/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to italic Cyrillic alphabet
# Аа Бб Вв Гг Дд Ее Ëë Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ьь Ээ Юю Яя
convert_to_italicCyrillic() {
  local alphabet="Аа Бб Вв Гг Дд Ее Ëë Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ьь Ээ Юю Яя"
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/Б/;s/C/Ц/;s/D/Д/;s/E/Е/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Ј/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/б/;s/c/ц/;s/d/д/;s/e/е/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/ј/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to early paleo‑Cyrillic／Church‑Slavonic alphabet
# early‑Cyrillic꞉ А Б В Г Д Є Ж Ꙃ Ꙁ И І К Л М Н О П Р С Т Ꙋ ОУ Ф Х Ѡ Ц Ч Ш Щ Ъ ЪІ Ь Ѣ Ꙗ Ѥ Ю Ѫ Ѭ Ѧ Ѩ Ѯ Ѱ Ѳ Ѵ Ҁ
convert_to_earlyCyrillic() {
  local alphabet="А Б В Г Д Є Ж Ꙃ Ꙁ И І К Л М Н О П Р С Т Ꙋ ОУ Ф Х Ѡ Ц Ч Ш Щ Ъ ЪІ Ь Ѣ Ꙗ Ѥ Ю Ѫ Ѭ Ѧ Ѩ Ѯ Ѱ Ѳ Ѵ Ҁ"
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/Б/;s/C/Ц/;s/D/Д/;s/E/Є/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Ј/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/б/;s/c/ц/;s/d/д/;s/e/є/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/ј/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to 🇷🇺 Russian alphabet
# Аа Бб Вв Гг Дд Ее Ёё Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ъъ Ыы Ьь Ээ Юю Яя
convert_to_Russian() {
  local alphabet="Аа Бб Вв Гг Дд Ее Ёё Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ъъ Ыы Ьь Ээ Юю Яя"
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/Б/;s/C/Ц/;s/D/Д/;s/E/Е/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Й/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/б/;s/c/ц/;s/d/д/;s/e/е/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/й/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to 🇷🇸 Serbian alphabet
# Аа Бб Вв Гг Дд Ђђ Ее Жж Зз Ии Јј Кк Лл Љљ Мм Нн Њњ Оо Пп Рр Сс Тт Ћћ Уу Фф Хх Цц Чч Џџ Шш
convert_to_Serbian() {
  local alphabet="Аа Бб Вв Гг Дд Ђђ Ее Жж Зз Ии Јј Кк Лл Љљ Мм Нн Њњ Оо Пп Рр Сс Тт Ћћ Уу Фф Хх Цц Чч Џџ Шш"
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/Б/;s/C/Ц/;s/D/Д/;s/E/Е/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Ј/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/б/;s/c/ц/;s/d/д/;s/e/е/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/ј/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to 🇲🇪 Montenegrin alphabet
# Аа Бб Вв Гг Дд Ђђ Ее Жж Зз З́з́ Ии Јј Кк Лл Љљ Мм Нн Њњ Оо Пп Рр Сс С́с́ Тт Ћћ Уу Фф Хх Цц Чч Џџ Шш
convert_to_Montenegrin() {
  local alphabet="Аа Бб Вв Гг Дд Ђђ Ее Жж Зз З́з́ Ии Јј Кк Лл Љљ Мм Нн Њњ Оо Пп Рр Сс С́с́ Тт Ћћ Уу Фф Хх Цц Чч Џџ Шш"
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/Б/;s/C/Ц/;s/D/Д/;s/E/Е/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Ј/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/б/;s/c/ц/;s/d/д/;s/e/е/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/ј/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to 🇧🇬 Bulgarian alphabet
# Аа Бб Вв Гг Дд Ее Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ъъ Ьь Юю Яя
convert_to_Bulgarian() {
  local alphabet="Аа Бб Вв Гг Дд Ее Жж Зз Ии Йй Кк Лл Мм Нн Оо Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ъъ Ьь Юю Яя"
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/Б/;s/C/Ц/;s/D/Д/;s/E/Е/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Ј/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/б/;s/c/ц/;s/d/д/;s/e/е/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/ј/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to “faux” Cyrillic／pseudo-Soviet☭ non-phonetic artificial-CONLANG／display alphabet…
convert_to_fauxCyrillic() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/А/;s/B/В/;s/C/Ц/;s/D/Д/;s/E/Е/;s/F/Ф/;s/G/Г/;s/H/Х/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/О/;s/P/П/;s/Q/Ћ/;s/R/Р/;s/S/С/;s/T/Т/;s/U/У/;s/V/В/;s/W/В/;s/X/КС/;s/Y/Ј/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/а/;s/b/δ/;s/c/ц/;s/d/д/;s/e/е/;s/f/ф/;s/g/г/;s/h/х/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/о/;s/p/п/;s/q/ћ/;s/r/р/;s/s/с/;s/t/т/;s/u/у/;s/v/в/;s/w/в/;s/x/кс/;s/y/ј/;s/z/з/')";;
      *)
        result+="$char";;
    esac
  done
  echo "$result"
}

# ƒunction converting text to 🇲🇰 Macedonian alphabet
# Аа Бб Вв Гг Дд Ѓѓ Ее Жж Зз Ѕѕ Ии Јј Кк Лл Љљ Мм Нн Њњ Оо Пп Рр Сс Тт Ќќ Уу Фф Хх Цц Чч Џџ Шш
convert_to_Macedonian() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/Α/;s/B/Б/;s/C/Ψ/;s/D/Δ/;s/E/Ε/;s/F/Φ/;s/G/Γ/;s/H/Η/;s/I/И/;s/J/Ј/;s/K/К/;s/L/Л/;s/M/М/;s/N/Н/;s/O/Ο/;s/P/Π/;s/Q/Љ/;s/R/Ρ/;s/S/С/;s/T/Τ/;s/U/Υ/;s/V/В/;s/W/Њ/;s/X/Џ/;s/Y/Ѕ/;s/Z/З/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/α/;s/b/б/;s/c/ψ/;s/d/δ/;s/e/ε/;s/f/φ/;s/g/γ/;s/h/η/;s/i/и/;s/j/ј/;s/k/к/;s/l/л/;s/m/м/;s/n/н/;s/o/ο/;s/p/π/;s/q/љ/;s/r/ρ/;s/s/с/;s/t/τ/;s/u/υ/;s/v/в/;s/w/њ/;s/x/џ/;s/y/ѕ/;s/z/з/')";;
      *)
        result+="$char";;
      esac
    done
  echo "$result"
}

# ƒunction converting text to 🇬🇷 Greek alphabet
# 🏺 Αα Ββ Γγ Δδ Εε Ζζ Ηη Θθ Ιι Κκ Λλ Μμ Νν Ξξ Οο Ππ Ρρ Σσ／ς Ττ Υυ Φφ Χχ Ψψ Ωω
convert_to_Greek() {
  local input="$1"
  local result=""
  local char
  for ((i=0; i<${#input}; i++)); do
    char="${input:i:1}"
    case "$char" in
      [A-Z])
        result+="$(echo "$char" | sed 's/A/Α/;s/B/Β/;s/C/Ψ/;s/D/Δ/;s/E/Ε/;s/F/Φ/;s/G/Γ/;s/H/Η/;s/I/Ι/;s/J/Ϗ/;s/K/Κ/;s/L/Λ/;s/M/Μ/;s/N/Ν/;s/O/Ο/;s/P/Π/;s/Q/Θ/;s/R/Ρ/;s/S/Σ/;s/T/Τ/;s/U/Υ/;s/V/Ξ/;s/W/Ω/;s/X/Χ/;s/Y/Υ/;s/Z/Ζ/')";;
      [a-z])
        result+="$(echo "$char" | sed 's/a/α/;s/b/β/;s/c/ψ/;s/d/δ/;s/e/ε/;s/f/φ/;s/g/γ/;s/h/η/;s/i/ι/;s/j/ϗ/;s/k/κ/;s/l/λ/;s/m/μ/;s/n/ν/;s/o/ο/;s/p/π/;s/q/θ/;s/r/ρ/;s/s/σ/;s/t/τ/;s/u/υ/;s/v/ξ/;s/w/ω/;s/x/χ/;s/y/υ/;s/z/ζ/')";;
      *)
        result+="$char";;
      esac
    done
  echo "$result"
}

# PROMPT user for text if none was provided…
get_TEXT_input() {
  if [ -z "$1" ]; then
    read -p "☭ Please enter some text to be converted: " input_text
  else
    input_text="$1"
  fi
}

# EXECUTE SCRIPT 📋
get_TEXT_input "$1" # capture TEXT input

# PROMPT for desired Cyrillic dialect option…
echo "Type “c”／“C” for “generic” Cyrillic."
echo "Type “ci”／“CI” or “ic”／“IC” or “iC” for italic‑Cyrillic."
echo "Type “ec”／“EC” or “pc”／“PC” or “pC” for early paleo‑Cyrillic／Church‑Slavonic."
echo "Type “r”／“R” for 🇷🇺 Russian‑Cyrillic."
echo "Type “s”／“S” for 🇷🇸 Serbian‑Cyrillic."
echo "Type “b”／“B” for 🇧🇬 Bulgarian‑Cyrillic."
echo "Type “fc”／“FC” or “PS”／“PS” or “pS” for “faux” Cyrillic／pseudo-Soviet☭ non‑phonetic artificial‑CONLANG／display alphabet."
echo "Type “m”／“M” for 🇲🇰 Macedonian‑Cyrillic alphabet."
echo "Type “g” or “G” for Greek.🇬🇷"
read -p "How do you want to decorate your text‽" choice

# Execute selected conversion…
case "$choice" in
  c|C)
    result=$(convert_to_Cyrillic "$input_text");;
  ci|CI|ic|IC|iC)
    result=$(convert_to_italicCyrillic "$input_text");;
  ec|EC|pc|PC|pC)
    result=$(convert_to_earlyCyrillic "$input_text");;
  r|R)
    result=$(convert_to_Russian "$input_text");;
  s|S)
    result=$(convert_to_Serbian "$input_text");;
  b|B)
    result=$(convert_to_Bulgarian "$input_text");;
  fc|FC|fC|ps|PS|pS)
    result=$(convert_to_fauxCyrillic "$input_text");;
  m|M)
    result=$(convert_to_Macedonian "$input_text");;
  g|G)
    result=$(convert_to_Greek "$input_text");;
  *)
    echo "Invalid choice… Exiting program.🪦"
    exit 1;;
esac

# copy result to clipboard in case of Linux or MacOS: 📋
if [[ "$OSTYPE" == "Linux" || "$OSTYPE" == "linux-gnu"* ]]; then
  if which xclip &> /dev/null; then
    echo "${result}" | xclip -sel clip
  fi 
elif [[ $OSTYPE == 'darwin'* ]]; then
  if which pbcopy &> /dev/null; then
    echo "${result}" | pbcopy
  fi
fi

# OUTPUT result: 🖥️
echo " "
echo $alphabet
echo " "
echo "Converted text is as follows…"
echo " "
echo $result
echo " "
