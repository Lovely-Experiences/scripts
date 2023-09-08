# Spam the console with rainbow colors.

function cc() {
    echo "\e[${1}m"
}

declare -a colors
colors[0]="31"
colors[1]="91"
colors[2]="33"
colors[3]="32"
colors[4]="34"
colors[5]="31"
colors[6]="35"
colors[7]="95"

while true
do
    for i in ${colors[@]}
    do
        echo -e "$(cc "0")$(cc "${i}") -"
    done
done