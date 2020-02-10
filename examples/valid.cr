require "../src/RandomISBN/english"
require "../src/RandomISBN/valid"

# Tests out `src/RandomISBN/valid` on a random ISBN

# Creates a random ISBN and then checks if it's valid
rand = RandomISBN::English.new
puts "#{rand} Is valid: #{RandomISBN::IsValid.new(rand)}"

my_book = "1237893-789322"
puts "#{my_book} Is valid: #{RandomISBN::IsValid.new(my_book)}"
# IsValid will only check if the isbn is valid and will not try and change the data, only sanitize for it's own use