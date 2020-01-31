require "./randomISBN/english.cr"

module RandomISBN
  VERSION = "0.2.2"

  puts RandomISBN::English.info
  rand = RandomISBN::English.new

  # Check to make sure that it prints out a 13 digit number
  while (rand.size < 13)
    rand = RandomISBN::English.new
  end

  # The main part of the app, returns the value as a string.
  puts "New ISBN-13: " + rand

  # Size for testing to make sure the while loop works
  print "Size of ISBN Number: "
  p rand.size
end
