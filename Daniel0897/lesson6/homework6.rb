a =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
a.each { |item| puts item }
#Same as above, but only print out values greater than 5.
a.each { |item| puts item if item >= 5 }

#Now, using the same array from 2, use the select method to extract all odd numbers into a new array.
b = a.select.each_with_index { |_, i| i.odd? }
puts b
c = a.select.each_with_index { |_, i| i.even? }
puts c

#Append 11 to the end of the original array. Prepend 0 to the beginning.
a << 11
a.unshift(0)
puts a

#Get rid of 11. And append a 3.
a.push(3)
a.delete(11) 
puts a

#Get rid of duplicates without specifically removing any one value.
a = a.uniq
puts a

#Tell what's the major difference between an Array and a Hash?

=begin
An array is a collection of data.
Each element of an array is accessed using an integer which is the index of the element in an array.

Hash is the collection of key-value pair.In Hash, the value is accessed using the key.
=end

#Suppose you have a hash h = { a:1, b:2, c:3, d:4 }
#Get the value of key :b
h = { a:1, b:2, c:3, d:4 }
 puts h[:b]
#Add to this hash the key:value pair {e:5}
 h.store(:e,5)
 puts h

 #Can hash values be arrays?Yes.  
 # hash values as arrays
hash = {names: ['dan', 'ion', 'mark']}

#Can you have an array of hashes?Yes
# array of hashes
arr = [{name: 'dan'}, {name: 'ion'}, {name: 'mark'}]

#Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

#arr.delete_if { |word| word.start_with?("s") }
#arr.delete_if { |word| word.start_with?("s", "w") }


#Take the following array:
#a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
#and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |p| p.split }
a = a.flatten
print a

#What will the following program output?

#hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
#hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

#if hash1 == hash2
  puts "These hashes are the same!"
#else
  puts "These hashes are not the same!"
#end

#OUTPUT IS : These hashes are the same!
