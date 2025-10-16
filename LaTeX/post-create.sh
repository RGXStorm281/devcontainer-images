#!/bin/bash

# Install KOMA-Script package.
sudo apt-get update
sudo apt-get install -y \
    make \
    latexmk \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-science \
    texlive-lang-european \
    texlive-lang-german \
    texlive-bibtex-extra \
    biber \
    ghostscript \
    cm-super \
    && apt-get clean