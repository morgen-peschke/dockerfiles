FROM ruby:2.7
RUN gem install tty-markdown
COPY tty-markdown.rb version.sh /
ENTRYPOINT ["ruby", "-W0", "/tty-markdown.rb"]
