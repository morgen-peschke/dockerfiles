require 'tty-markdown'
puts TTY::Markdown.parse STDIN.read
