FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl
COPY . .
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs && npm install
CMD ["npm", "start"]
