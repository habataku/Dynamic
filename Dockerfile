FROM node:18-alpine

ENV PORT 8080

WORKDIR /app

COPY ["package.json", "./"]
RUN npm install --production

COPY . .
EXPOSE 8080
ENTRYPOINT [ "node" ]
CMD ["./index.js"]
