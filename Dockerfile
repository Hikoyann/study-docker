FROM ruby:2.7

WORKDIR /var/www

COPY ./src /var/www/

RUN bundle config --locla set path 'vendor/bundel'

RUN bundle install

CMD ["bundle", "exec", "ruby", "app.rb"]
