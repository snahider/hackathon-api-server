FROM ruby:2.4.1-alpine
RUN apk --update add make build-base
RUN mkdir -p /app 
WORKDIR /app
COPY Gemfile ./ 
RUN gem install bundler && bundle install
COPY . /app
EXPOSE 8080
CMD ["ruby", "app.rb","-p 8080"]