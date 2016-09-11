#!/usr/bin/env bash

function usage() {
    cat<<EOF
Build the pdf document from LaTeX input.

Usage:
    $(basename $0) [--clean]

Options:
    -h, --help      show this help and exit
    --clean         clean stuff created from build
EOF
}



# parse command line options
while [ -n "$1" ]
do
    case "$1" in
        (-h|--help)
            usage
            exit 0
            ;;
        (--clean)
            echo just cleaning, not building
            rm -v *.aux *.idx *.ilg *.ind *.log *.out *.toc
            exit 0
            ;;
        (*)
            echo Error: Unknown option $1
            usage
            exit 1
            ;;
    esac
done



# actual program

pdflatex physik_script_abi.tex
makeindex physik_script_abi.idx
pdflatex physik_script_abi.tex
pdflatex physik_script_abi.tex

