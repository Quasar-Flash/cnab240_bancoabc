FROM ruby:3.1

WORKDIR /cnab240_bancoabc

# COPY Gemfile /cnab240_bancoabc/Gemfile

# COPY Gemfile.lock /cnab240_bancoabc/Gemfile.lock

COPY . /cnab240_bancoabc/

RUN bundle instal --full-index

RUN echo 'alias rspec="bundle exec rspec"' >> ~/.bashrc

RUN echo 'alias rubocop="bundle exec rubocop"' >> ~/.bashrc
