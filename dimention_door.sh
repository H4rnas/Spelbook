#!/bin/bash
time {
wget https://www.gutenberg.org/files/34079/34079-0.txt;
mv 34079-0.txt /home/marik1234/Desktop
cd /home/marik1234/Desktop;
Book=/home/marik1234/Desktop;
if grep -Irs -e 34079-0.txt "$Book";
then
        echo "Wybierz plik";
        echo "1. Swiezo pobrany";
        echo "2. Istniejacy";
        read wybor;
        case $wybor in 
                1) if grep -Irs -e 34079-0.txt "$Book";
                        then
                                wget https://www.gutenberg.org/files/34079/34079-0.txt;
                                        L=$( grep -o 'ą' /home/marik1234/Desktop/34079-0.txt.1 | wc-c ; )
                                                echo -e "Tyle bylo literek $L"
                                                        iconv -sc -f utf-8 -t utf-8 34079-0.txt.1 >> Bez.txt;
                        fi;;
                2) L=$( grep -o 'ą' /home/marik1234/Desktop/34079-0.txt. | wc-c ; )
                        echo -e "Tyle bylo literek $L"
                                iconv -sc -f utf-8 -t utf-8 34079-0.txt >> Bez.txt;;
        esac;
fi }

