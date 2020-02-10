require "../src/RandomISBN/english.cr"

puts RandomISBN::English.info
rand = RandomISBN::English.new

# Check to make sure that it prints out a 13 digit number
while (rand.size < 13)
  rand = RandomISBN::English.new
end

# The main part of the app, returns the value as a string.
puts "New ISBN-13: " + rand

# Size for testing to make sure the while loop works, Remove once tests are in place
puts "Size of string: " + (rand.size).to_s

