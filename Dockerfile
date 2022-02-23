FROM node:lts-alpine3.14
ENV NODE_OPTIONS=--max_old_space_size=3072
WORKDIR /usr/src/app
COPY package*.json ./
COPY tsconfig*.json ./
RUN npm install --quiet
COPY . .
RUN npm run build
RUN export NODE_OPTIONS=--max_old_space_size=3072
CMD npm run start:dev
