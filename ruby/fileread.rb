#!/bin/ruby
# require 'pathname'

###  s = File.read("fileread.txt",:encoding => Encoding::UTF_8)
###  puts(s)

#------------------------------------#

lines = fields = 0

open("fileread.txt") {|file|
  while l = file.gets
    puts(lines, l)
    lines += 1
    fields += l.split(',').size
  end
}

puts "Total #{lines} lines, #{fields} fields"
