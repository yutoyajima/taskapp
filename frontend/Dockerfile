# ベースイメージの指定
FROM node:20.1.0

# 作業ディレクトリの指定
WORKDIR /usr/src/app/

# 依存関係のコピーとインストール
COPY package*.json ./
RUN npm install

# ソースコードのコピー
COPY . .

# アプリケーションの起動
CMD ["npm", "start"]

# ポートの開放
EXPOSE 3000