# ベースイメージとして公式のRubyイメージを使用します。
FROM ruby:3.1.2

# 必要なパッケージをインストールします。
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# アプリケーションディレクトリを作成します。
RUN mkdir /myapp
WORKDIR /myapp

# ホストのGemfileとGemfile.lockをコピーします。
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# ライブラリをインストールします。
RUN bundle install

# その他のアプリケーションファイルをコピーします。
COPY . /myapp

# アプリケーションを起動します。
CMD ["rails", "server", "-b", "0.0.0.0"]
