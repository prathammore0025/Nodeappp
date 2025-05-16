# stage-1
FROM node:20 AS builder

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .

RUN npm run build

# stage-2
FROM node:20-slim 

WORKDIR /app

COPY --from=builder /app/dist ./dist

#COPY --from=builder /app/package*.json ./

COPY . .

RUN npm i

EXPOSE 3000

CMD ["npm", "start"]
