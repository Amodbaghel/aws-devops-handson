# Use official Node image as a base
FROM node:18 AS build
WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

# Use Nginx to serve the build
FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
