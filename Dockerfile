FROM quay.io/upslopeio/node-alpine  
RUN apk add --no-cache libc6-compat
WORKDIR /app
COPY package.json ./
RUN yarn install --frozen-lockfile

EXPOSE 3000
CMD ["yarn", "start"]
