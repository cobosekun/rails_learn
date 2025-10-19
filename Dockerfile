FROM ruby:3.2.3

# 必要なパッケージをインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Bundlerのバージョンを指定
RUN gem install bundler -v 2.5.6

# 作業ディレクトリを設定
WORKDIR /app

# GemfileとGemfile.lockをコピー
COPY Gemfile* ./

# bundle installを実行
RUN bundle install

# アプリケーションのコードをコピー
COPY . .

# ポートを公開
EXPOSE 3000

# デフォルトコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
