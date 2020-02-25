
puts -123.odd?
puts 6893.next
puts 0.pred
puts 12.to_f%4.5.round(2)
puts (28%6)*4.7.round(-1)

#"Brand new bicycle\r\n" - remove trailing special characters
puts "Brand new bicycle\r\n".gsub(/\d/,'').strip

#"Brand new bicycle" - using indexes extract new
string = "Brand new bicycle"
puts string[6,3]

#"Brand new bicycle" - delete last word
puts "Brand new bicycle"[0...10]
puts "Brand new bicycle".sub("bicycle", "")

#"Brand new bicycle" - check if the sctring's last word is bicycle
string = "Brand new bicycle"
puts string.include?("bicycle")

#"Brand new bicycle" - find out what index the letter "w" has
puts "Brand new bicycle".index('w')

puts "I thought I knew\n everything\n before that night" 


puts "-123 - find out if it's odd?" 
a = -123
puts "The result is #{a.odd?}"

puts "6893 - next number will be #{6893.next}" 
puts "0 - the previous number will be #{0.pred}"

puts "12 - cast it to float, then devide by 4.5 then round it up" 
puts "The result is #{12.to_f%4.5.round(2)}"

puts "28 - call modulo by 6, then multiply result by 4.7 and round it down"
puts "The result is #{(28%6)*4.7.round(-1)}"

