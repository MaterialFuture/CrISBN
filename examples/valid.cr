require "../src/crisbn/generate"
require "../src/crisbn/valid"

# Tests out `src/ISBN/valid` on a random ISBN

# Creates a random ISBN and then checks if it's valid
rand = ISBN::Generate.english
puts "#{rand} Is valid: #{ISBN::IsValid.new(rand)}"

my_book = "1237893-789322"
puts "#{my_book} Is valid: #{ISBN::IsValid.new(my_book)}"
# IsValid will only check if the isbn is valid and will not try and change the data, only sanitize for it's own use