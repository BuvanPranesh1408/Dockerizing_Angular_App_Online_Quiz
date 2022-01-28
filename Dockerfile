From node:latest as node
WORKDIR /app
COPY . .
RUN npm installd
RUN npm run build --prod

FROM nginx:alpine
COPY --from=node /app/dist/onilne-test /usr/share/nginx/html