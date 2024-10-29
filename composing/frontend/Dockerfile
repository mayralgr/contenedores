# # Etapa de construccion / BUILD ONLY
# FROM node:18-alpine AS builder

# WORKDIR /frontend

# COPY package.json ./

# RUN npm i
# RUN npm run build

# # Etapa de ejecucion # RUN ONLY

# FROM node:18-alpine

# WORKDIR /frontend

# # Copia los archivos construidos desde la etapa de construccion
# COPY --from=builder /frontend .

# EXPOSE 3000

# CMD ["npm", "start"]    

# Build stage
FROM node:18-alpine as builder
WORKDIR /frontend
COPY package*.json .
RUN npm install
# copy rest of files
COPY . .
RUN npm run build
# Run stage
FROM nginx:1.19.0
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /frontend/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]