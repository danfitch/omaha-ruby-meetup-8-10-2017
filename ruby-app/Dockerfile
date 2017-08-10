FROM ruby:2.4

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD app/. $APP_HOME
# Start server

ENV PORT 3000
EXPOSE 3000
CMD ["ruby", "app.rb"]
