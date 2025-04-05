FROM node:20-alpine

RUN addgroup app && adduser -S -G app app

WORKDIR /app

COPY package*.json .

RUN chown -R app:app /app

USER app

RUN npm install

COPY . .

ENV API_URL=http://example.com/

EXPOSE 3000

CMD ["node","app.js"]
