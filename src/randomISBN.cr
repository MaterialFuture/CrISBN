require "./randomISBN/**"

module RandomISBN
  VERSION = "0.1.0"

  puts "New ISBN: " + RandomISBN::New.english
end
