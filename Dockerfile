FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-xetex && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node
