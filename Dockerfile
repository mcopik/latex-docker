
FROM ubuntu:22.04

# Install LaTeX and tools 
# avoid problems with missing CA certificates
RUN apt-get update &&\
    apt-get install -y --no-install-recommends\
      ca-certificates git make curl unzip texlive-base texlive-latex-base texlive-latex-recommended texlive-latex-extra\
      texlive-fonts-recommended texlive-fonts-extra texlive-bibtex-extra texlive-pictures\
      texlive-fonts-extra-links texlive-plain-generic texlive-science python3-pygments chktex &&\
    apt-get clean autoclean && update-ca-certificates

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    ./aws/install &&\
    rm -rf awscliv2.zip aws

