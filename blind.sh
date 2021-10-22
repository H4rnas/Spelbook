#!/bin/bash
shuf -n 1 -e wroclaw krakow > Tekst1.txt
scp Tekst1.txt marik4321@192.168.56.103:/home/marik4321/Desktop
ssh marik4321@192.168.56.103 << 'EOF'
cd /home/marik4321/Desktop
File=Tekst1.txt
if grep -Irs -e wroclaw "$File";
then 
	echo "krakow">Tekst2.txt
else 
	echo "wroclaw">Tekst2.txt
fi
EOF
ssh marik4321@192.168.56.103 grep --include="*.txt" "wroclaw" /home/marik4321/Desktop 
