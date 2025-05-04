#!/bin/bash

if [ $# -eq 5 ]; then
    subject=$1
    assignment_no=$2
    unique_no=$3
    due_date=$4
    num_questions=$5
else
    echo "Usage: $0 <subject> <assignment_no> <unique_no> <due_date> <num_questions>"
    exit 1
fi

echo "Subject: $subject\n"
echo "Assignment No.: $assignment_no\n"
echo "Unique No.: $unique_no\n"
echo "Due Date: $due_date\n"
echo "Questions: $num_questions\n"

echo "Creating ass$assignment_no.tex...\n"

printf "%s\n\n" "%% $subject - Assignment $assignment_no - Unique Number: $unique_no" > ass$assignment_no.tex
printf "%s\n" "\documentclass{article}" >> ass$assignment_no.tex
printf "%s\n" "\usepackage[utf8]{inputenc}" >> ass$assignment_no.tex
printf "%s\n\n" "\usepackage[english]{babel}" >> ass$assignment_no.tex
printf "%s\n" "\title{$subject \\\\ Assignment $assignment_no}" >> ass$assignment_no.tex
printf "%s\n" "\author{Graham Strickland \\\\ Student Number: 10632646 \\\\ Unique Number: $unique_no}" >> ass$assignment_no.tex
printf "%s\n\n" "\date{{\Large Due Date: $due_date}}" >> ass$assignment_no.tex
printf "%s\n" "\begin{document}" >> ass$assignment_no.tex
printf "%s\n\n" "\maketitle" >> ass$assignment_no.tex

mkdir sections
for i in `seq $num_questions`
    do printf "%% Question $i\n\n" > sections/question$i.tex
done 

for i in `seq $5`
    do printf "%s\n" "\section*{Question $i}"
        printf "%s\n\n" "\input{sections/question$i}"
done >> ass$assignment_no.tex

printf "%s\n" "\end{document}" >> ass$assignment_no.tex

echo "Compiling LaTeX document...\n"
pdflatex ass$assignment_no.tex

echo "Setting up git repo..."
git init
git add .
git commit -m "Initial commit"
echo "\nDone!"

exit 0
