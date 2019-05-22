FROM ruby:2.5

WORKDIR /usr/src/app

COPY movie-rating.rb ./

CMD ["./movie-rating.rb"]
