
FROM ubuntu:22.04

# Install LaTeX and tools 
# avoid problems with missing CA certificates
RUN apt-get update &&\
    apt-get install -y --no-install-recommends\
      ca-certificates git make texlive-base texlive-latex-base texlive-latex-recommended texlive-latex-extra\
      texlive-fonts-recommended texlive-fonts-extra texlive-bibtex-extra texlive-pictures\
      texlive-fonts-extra-links texlive-plain-generic texlive-science python3-pygments chktex &&\
    apt-get clean autoclean && update-ca-certificates

