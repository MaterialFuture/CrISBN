require "./rand"
require "./exception"
require "json"

# WIP - This will check if the ISBN is valid, that way people can check other ISBNs

class RandomISBN::IsValid
  def self.new(isbn : String)
    # Check to make sure string has valid encoding and raise execption if not
    raise Exceptions::Generic.new("ISBN isn't valid") unless isbn.valid_encoding?

    # Remove `-` characters since we want to properly check value
    if (isbn =~ /-/)
      isbn = isbn.split(/-/).join
    end

    case isbn.size
      when 10
        RandomISBN::IsValid.valid_isbn_10(isbn)
      when 13
        RandomISBN::IsValid.valid_isbn_13(isbn)
      else
        false
    end
  end

  # There's probably a more elegant way to do the defs below
  # Return false if numbers aren't correct
  def self.valid_isbn_10(isbn : String)
    return false unless isbn.match(/^[0-9]{9}[0-9X]$/)
    return true
  end
  def self.valid_isbn_13(isbn : String)
    return false unless isbn.match(/^[0-9]{12}[0-9X]$/)
    return true   
  end
  
end