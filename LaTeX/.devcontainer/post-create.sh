#!/bin/bash

# exit immediately if a command exits with non-zero status
set -e

# Install latex environment.
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
    texlive-extra-utils \
    biber \
    ghostscript \
    cm-super \
    && apt-get clean