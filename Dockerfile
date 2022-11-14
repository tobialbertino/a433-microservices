FROM node:14.21.1-alpine3.16
WORKDIR /app
COPY . .

ENV NODE_ENV=production 
ENV DB_HOST=item-db

RUN npm install --production --unsafe-perm && npm run build
EXPOSE 8080

CMD ["npm", "npm start"]