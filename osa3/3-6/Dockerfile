FROM node:alpine as build

WORKDIR /app

COPY . .

RUN npm install && npm run build && npm install -g serve

FROM nginx

EXPOSE 80

COPY --from=build /app/dist /usr/share/nginx/html
COPY --from=build /app/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]

