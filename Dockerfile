FROM node:18-alpine

ENV PORT 8080
ARG NPM_BUILD="npm install --omit=dev"
EXPOSE 8080

WORKDIR /app

COPY ["package.json", "./"]
RUN $NPM_BUILD

COPY . .

ENTRYPOINT [ "node" ]
CMD ["./index.js"]
