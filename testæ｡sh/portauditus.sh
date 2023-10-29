#!/bin/bash
# ./portauditus.sh
# find open ports, processes, and number of files opened per process
# ❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢
# Libre ©️opyLeft: released under GNU Affero General Public License, version 3
# https://www.gnu.org/licenses/agpl-3.0.en.html
# ❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢
echo This script will find all the open ports on a computer.
echo It will also show the process that has opened each one and the number of files opened per process.
echo
echo

showProcesses()
{
	netstat -atuv | awk '{print $4}' > ports.list
	lsof -i < ports.list | awk 'NR>1{print $1}'
}

showNumberOfFiles()
{
	lsof -i < ports.list | awk 'NR>1{print $2}' > files.list
	while read pid; do
	lsof -p $pid | awk '{print $1}' > numberoffiles.list
	wc -l < numberoffiles.list
	done < files.list
}

# formatting WIP

# echo "Hai" | nawk '{
# printf("==========================================\n");
# printf("|%10s|%10s|%10s|%10s|\n","11","12","13","14");
# printf("|%10s|%10s|%10s|%10s|\n","21","22","23","24");
# printf("==========================================\n");
# }'

echo Open ports on your computer:
echo

netstat -tuv | awk 'NR>2{print $4}'

echo
echo
echo Processes on each port:
echo

showProcesses

echo
echo
echo Number of files per process:
echo

showNumberOfFiles