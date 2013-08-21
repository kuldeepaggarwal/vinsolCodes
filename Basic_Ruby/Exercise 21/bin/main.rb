#! /usr/bin/ruby
require_relative "../lib/fixnum"
begin
  number = gets.chomp
  raise "Error Converting it to a number" if  (!(number.eql?"0") && (number.to_i) == 0)
  number = number.to_i
  raise "Negative numbers not allowed" if number < 0
rescue Exception
  puts "#{$!} Exiting Program ... Press enter"
  gets
  abort
end
print "Factorial is: ", number > 1 ?  (number).factorial : "1","\n"
