require "./RandomISBN/**"

module RandomISBN
  VERSION = "0.1.2"

  puts "New ISBN: " + RandomISBN::New.english
end
