FROM node:18-bullseye

# Install n8n
RUN npm install -g n8n

# Install LaTeX
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-latex-extra \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /data

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
