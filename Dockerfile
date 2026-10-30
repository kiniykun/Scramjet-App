 FROM node:22-alpine
EXPOSE 8080/tcp
WORKDIR /app
RUN apk add --no-cache python3 make g++ && npm install -g pnpm
COPY . .
RUN pnpm install --frozen-lockfile
ENV NODE_ENV=production
CMD ["pnpm", "start"]
