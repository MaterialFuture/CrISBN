require "json"

module RandomISBN::New

  # Todo: adding a function that generates the random numbers as needed
  # def rand_num(n)
  #   Random.new.rand(1..9).to_s.each(n)
  # end

  # This is the array that'll be used for the english one
  # LANG = ["9780", "9781"]
  # LANG = LANG.sample()

  LANG = "9780" #For testing

  # The idea is that each language reference will have either it's own 
  def self.english
    rand_byte = Random.new.rand(999).to_s(3)
    rand_byte_one = Random.new.rand(1..9).to_s
    if (LANG === "9780")
      digit_codes = Random.new.rand(1..6)
      if digit_codes === 6
        rand_byte = Random.new.rand(9999999).to_s 
        reg_element = rand_byte + rand_byte + rand_byte + rand_byte + rand_byte + rand_byte + rand_byte #This will replaced with a function that does this right
        reg_group = Random.new.rand(1).to_s + rand_byte
        reg_group = reg_group + reg_element

      elsif digit_codes === 5
        reg_element = rand_byte + rand_byte + rand_byte + rand_byte + rand_byte + rand_byte #This will replaced with a function that does this right
        reg_group_rand = [200..227, 229..368, 370..638, 640..647, 649..654, 656..699].sample()
        reg_group = Random.new.rand(reg_group_rand).to_s
        reg_group = reg_group + reg_element

      elsif digit_codes === 4
        reg_element = rand_byte + rand_byte + rand_byte + rand_byte + rand_byte #This will replaced with a function that does this right
        reg_group_rand = [2280..2289, 3690..3699, 6390..6398, 6550..6559, 7000..8499].sample()
        reg_group = Random.new.rand(reg_group_rand).to_s
        reg_group = reg_group + reg_element

      elsif digit_codes === 3
        reg_element = rand_byte + rand_byte + rand_byte + rand_byte #This will replaced with a function that does this right
        reg_group = Random.new.rand(85000..89999).to_s
        reg_group = reg_group + reg_element

      elsif digit_codes === 2
        reg_element = rand_byte + rand_byte + rand_byte #This will replaced with a function that does this right
        reg_group = Random.new.rand(900000..949999).to_s
        reg_group = reg_group + reg_element

      elsif digit_codes === 1
        reg_element = rand_byte + rand_byte #This will replaced with a function that does this right
        reg_group_rand = [6399000..6399999, 6480000..6489999, 9500000..9999999].sample()
        reg_group = Random.new.rand(reg_group_rand).to_s
        reg_group = reg_group + reg_element
      end
    end

    # This will be all the logic for the English 9781 reference group for ISBNs, mostly the same as above.
    # if (LANG === "9781")
    #   digit_codes = Random.new.rand(5..6)
    #   if digit_codes === 6
    #     reg_group = "00" + Random.new.rand(9999999).to_s

    #     1-01-xxxxxx-x 	1-06-xxxxxx-x

    #   elsif digit_codes === 5
    #     reg_element = Random.new.rand(999999).to_s
    #     reg_group_rand = [200..227, 229..368, 370..638, 640..647, 649..654, 656..699].sample()
    #     reg_group = Random.new.rand(reg_group_rand).to_s
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 4
    #     reg_element = Random.new.rand(99999).to_s
    #     reg_group_rand = [2280..2289, 3690..3699, 6390..6398, 6550..6559, 7000..8499].sample()
    #     reg_group = Random.new.rand(reg_group_rand).to_s
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 3
    #     reg_element = Random.new.rand(9999).to_s
    #     reg_group = Random.new.rand(85000..89999).to_s
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 2
    #     reg_element = Random.new.rand(999).to_s
    #     reg_group = Random.new.rand(900000..949999).to_s
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 1
    #     reg_element = Random.new.rand(99).to_s
    #     reg_group_rand = [6399000..6399999, 6480000..6489999, 9500000..9999999].sample()
    #     reg_group = Random.new.rand(reg_group_rand).to_s
    #     reg_group = reg_group + reg_element
    #   end
    # end
    
    # Returns what is needed
    return LANG + reg_group.to_s

  end
end