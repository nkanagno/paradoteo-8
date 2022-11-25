#! /usr/bin/bash
echo "my current directory:"
ls
sleep 1
echo "type the name of your c++ file"
read file
echo "creating a file c++.."
sleep 1
cat $file
echo "my current directory:"
ls
sleep 1
echo "opening the c++ that you created.."
vim $file
echo "compiling and executing $file..."
echo "
compiling result:
"
if g++ $file -o file; then
    echo "Success!";
    echo "
    "
    echo "Your program:"
    echo "
    "
    ./file
else
    echo "coundnt be compiled";
fi


