FROM n8nio/n8n:latest

USER root

# Install dependencies using the correct package manager for n8n's base
RUN npm install -g --unsafe-perm pdflatex-wrapper || \
    (curl -L https://github.com/scottkosty/install-tl-ubuntu/raw/master/install-tl-ubuntu && \
    chmod +x install-tl-ubuntu && \
    ./install-tl-ubuntu)

USER node
