#! /usr/bin/bash


# Showing my directory before convertion
echo "My current directory:"
ls
sleep 2
# showing the selection menu:
echo   "Selection Menu:
        a) book.epub (Game Preview book)
        b) MyReport.md
        choose what you want to convert (type a or b):"
read first_option

# First IF statement (if [a] then convert book.epub):
if [ "$first_option" = "a" ];
then
# Convertion Menu:
echo   "Selection Menu for book.epub (Game Preview book):
        a) tex
        b) html
        c) txt
        d) All
        choose what you want to convert it into (type a or b):"
    read second_option
    if [ "$second_option" = "a" ];
    then
        echo "converting epub to tex..."
        pandoc -s book.epub -o book.tex
        echo "success!!"
        echo "My current directory:"
        ls
        vim book.tex
    elif [ "$second_option" = "b" ];
    then
        echo "converting epub to html..."
        pandoc -s book.epub -o book.html
        echo "success!!"
        echo "My current directory:"
        ls
    elif [ "$second_option" = "c" ];
    then
        echo "converting epub to txt..."
        pandoc -s book.epub -o book.txt
        echo "success!!"
        echo "My current directory:"
        ls
    elif [ "$second_option" = "d" ];
    then
        echo "converting epub to tex..."
        pandoc -s book.epub -o book.tex
        echo "success!!"
        echo "converting epub to html..."
        pandoc -s book.epub -o book.html
        echo "success!!"
        echo "converting epub to txt..."
        pandoc -s book.epub -o book.txt
        echo "success!!"
        echo "My current directory:"
        ls
    else
        echo "there is no $second_option choice"
    fi
elif [ "$first_option" = "b" ];
then
# Convertion Menu:
echo   "Selection Menu for myReport.md:
        a) pdf
        b) html
        c) ipynb
        d) All
        choose what you want to convert it into (type a or b):"
    read second_option
    if [ "$second_option" = "a" ];
    then
        echo "converting md to pdf..."
        pandoc -N --quiet --variable "geometry=margin=1.2in" --variable mainfont="Noto Sans Regular" --variable sansfont="Noto Sans Regular" --variable monofont="Noto Sans Regular" --variable fontsize=12pt --variable version=2.0 myReport.md --pdf-engine=xelatex --toc -o myReport.pdf
        echo "success!!"
    elif [ "$second_option" = "b" ];
    then
        echo "converting md to html..."
        pandoc -s myReport.md --metadata title="H anafora moy" -o myReport.html
        echo "success!!"
        echo "My current directory:"
        ls
    elif [ "$second_option" = "c" ];
    then
        echo "converting md to ipynb..."
        pandoc myReport.md -o myReport.ipynb
        echo "success!!"
        echo "My current directory:"
        ls
    elif [ "$second_option" = "d" ];
    then
        echo "converting md to pdf..."
         pandoc -N --quiet --variable "geometry=margin=1.2in" --variable mainfont="Noto Sans Regular" --variable sansfont="Noto Sans Regular" --variable monofont="Noto Sans Regular" --variable fontsize=12pt --variable version=2.0 myReport.md --pdf-engine=xelatex --toc -o myReport.pdf
        echo "success!!"
        echo "converting md to html..."
        pandoc -s myReport.md --metadata title="H anafora moy" -o myReport.html
        echo "success!!"
        echo "converting md to ipynb..."
        pandoc -s myReport.md -o myReport.ipynb
        echo "success!!"
        echo "My current directory:"
        ls
    else
        echo "there is no $second_option choice"
    fi
else
        echo "there is no $first_option choice"
fi





