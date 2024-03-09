FROM ubuntu:latest
EXPOSE 3000
WORKDIR /app
ENV NODE_VERSION=18.19.0
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y vim curl yarnpkg python3 git
RUN mkdir -p /root/.nvm && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
ENV NVM_DIR=/root/.nvm
ENV NVM_NODEJS_ORG_MIRROR=http://nodejs.org/dist/
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version
RUN npm install -g yarn
COPY package.json .
COPY packages/app/package.json packages/app/
COPY packages/backend/package.json packages/backend/
COPY yarn.lock .
RUN yarn install
COPY . .
CMD yarn dev