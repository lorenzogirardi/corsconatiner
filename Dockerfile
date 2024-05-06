FROM lgirardi/lg-nodeimg-alpine:edge

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm config set strict-ssl false
RUN npm install
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]
