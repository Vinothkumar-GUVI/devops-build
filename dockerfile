# Stage 1: Build
FROM node:16 as build
WORKDIR /app
RUN npm set registry https://registry.npmjs.org/
COPY package.json package-lock.json ./
RUN npm install --prefer-offline --no-audit --progress=false
COPY . .
RUN npm run build

# Stage 2: Serve
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]

