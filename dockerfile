# Node.js resmi Docker imajını kullanarak başlayın
FROM node:14-alpine

# Çalışma dizinini /app olarak ayarlayın
WORKDIR /app

# Bağımlılıkları kopyalayın ve kurun
COPY package.json yarn.lock ./
RUN yarn install --production

# Uygulama kaynak dosyalarını kopyalayın
COPY . .

# Uygulamayı çalıştırın
CMD ["node", "app.js"]
