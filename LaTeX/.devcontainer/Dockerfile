# use the microsoft devcontainer image as base
FROM mcr.microsoft.com/devcontainers/base:bullseye

# Install LaTeX dependencies
RUN apt-get update && apt-get install -y \
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