FROM node

WORKDIR /usr/albes-nextjs-app

COPY package*.json /usr/albes-nextjs-app

RUN npm install

COPY . /usr/albes-nextjs-app

RUN npm run build

COPY . /usr/albes-nextjs-app

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]