require 'tty-markdown'
width = ENV['COLUMNS'].to_i
width = 80 unless width.to_s == ENV['COLUMNS']
puts TTY::Markdown.parse(STDIN.read, width: width)
