require "./rand"
require "json"

class RandomISBN::English

  # Todo: adding a function that generates the random numbers as needed
  # def rand_num(n)
  #   Random.new.rand(1..9).to_s.each(n)
  # end

  # This is the array that'll be used for the english one
  # LANG = ["9780", "9781"]
  # LANG = LANG.sample()

  LANG = "9780" #For testing


  def self.new
    if (LANG === "9780")
      digit_codes = Random.new.rand(1..6)
      if digit_codes === 6
        rand_byte = RandNum.new.fromZero 7
        reg_group = Random.new.rand(1).to_s + rand_byte

      elsif digit_codes === 5
        rand_byte = RandNum.new.fromZero 6
        reg_group_rand = [200..227, 229..368, 370..638, 640..647, 649..654, 656..699].sample()
        reg_group = Random.new.rand(reg_group_rand).to_s + rand_byte

      elsif digit_codes === 4
        rand_byte = RandNum.new.fromZero 5
        reg_group_rand = [2280..2289, 3690..3699, 6390..6398, 6550..6559, 7000..8499].sample()
        reg_group = Random.new.rand(reg_group_rand).to_s + rand_byte

      elsif digit_codes === 3
        rand_byte = RandNum.new.fromZero 4
        reg_group = Random.new.rand(85000..89999).to_s + rand_byte

      elsif digit_codes === 2
        rand_byte = RandNum.new.fromZero 3
        reg_group = Random.new.rand(900000..949999).to_s + rand_byte

      elsif digit_codes === 1
        rand_byte = RandNum.new.fromZero 2
        reg_group_rand = [6399000..6399999, 6480000..6489999, 9500000..9999999].sample()
        reg_group = Random.new.rand(reg_group_rand).to_s + rand_byte
      end
    end

    # This will be all the logic for the English 9781 reference group for ISBNs, mostly the same as above.
    # if (LANG === "9781")
    #   digit_codes = Random.new.rand(5..6)
    #   if digit_codes === 6
    #     reg_group = "0" + Random.new.rand(1..6).to_s + Random.new.rand(9999999).to_s
    #   elsif digit_codes === 5
    #     reg_element = Random.new.rand(999999).to_s
    #     reg_group_rand = [0..9, 100..397, 714..716].sample()
    #     reg_group = Random.new.rand(reg_group_rand)
    #     if (reg_group_rand < 10) #Make this a ternary to be cleaner
    #       reg_group = "00" + reg_group.to_s
    #     end
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 4
    #     reg_element = Random.new.rand(99999).to_s
    #     reg_group_rand = [700..999, 3980..5499, 6860..7139, 7170..7319, 7900..7999, 8672..8675, 9730..9877].sample()
    #     reg_group = Random.new.rand(reg_group_rand)
    #     if (reg_group_rand > 700 && reg_group_rand < 999) #Make this a ternary to be cleaner
    #       reg_group = "0" + reg_group.to_s
    #     end
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 3
    #     reg_element = Random.new.rand(9999).to_s
    #     reg_group_rand = [55000..68599, 74000..77499, 77540..77639, 77650..77699, 77770..78999, 80000..86719, 86760..86979].sample()
    #     reg_group = Random.new.rand(reg_group_rand).to_s
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 2
    #     reg_element = Random.new.rand(999).to_s
    #     reg_group_rand = [869800..915999, 916506..972999, 987800..998999].sample()
    #     reg_group = Random.new.rand(reg_group_rand).to_s
    #     reg_group = reg_group + reg_element

    #   elsif digit_codes === 1
    #     reg_element = Random.new.rand(99).to_s
    #     reg_group_rand = [7320000..7399999, 7750000..7753999, 7764000..7764999, 7770000..7776999, 9160000..9165059, 9990000..9999999].sample()
    #     reg_group = Random.new.rand(reg_group_rand).to_s
    #     reg_group = reg_group + reg_element
    #   end
    # end
    
    # Returns what is needed
    return LANG + reg_group.to_s

  end
end