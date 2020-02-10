require "./rand"
require "json"

class RandomISBN::English
  LANG_ENG = ["9780", "9781"] #This is the array that'll be used for the english one, if there's more I can add it below, I'm sure there's a better way of doing it.
  LANG = LANG_ENG.sample()    #Pick randomly from the array above and

  def self.info
    puts "Generates a random legal ISBN, may or may not be a real book."
    puts "Use RandomISBN::English.new to generate a new one."
  end

  def self.new
    if (LANG === "9780")
      digit_codes = Random.new.rand(1..6)
      case digit_codes
      when 6
        rand_byte = RandNum.fromZero 7
        reg_group = Random.new.rand(1)
      when 5
        rand_byte = RandNum.fromZero 6
        reg_group_rand = [200..227, 229..368, 370..638, 640..647, 649..654, 656..699].sample()
        reg_group = Random.new.rand(reg_group_rand)
      when 4
        rand_byte = RandNum.fromZero 5
        reg_group_rand = [2280..2289, 3690..3699, 6390..6398, 6550..6559, 7000..8499].sample()
        reg_group = Random.new.rand(reg_group_rand)
      when 3
        rand_byte = RandNum.fromZero 4
        reg_group = Random.new.rand(85000..89999)
      when 2
        rand_byte = RandNum.fromZero 3
        reg_group = Random.new.rand(900000..949999)
      when 1
        rand_byte = RandNum.fromZero 2
        reg_group_rand = [6399000..6399999, 6480000..6489999, 9500000..9999999].sample()
        reg_group = Random.new.rand(reg_group_rand)
      end
    end

    # This will be all the logic for the English 9781 reference group for ISBNs, mostly the same as above.
    if (LANG === "9781")
      digit_codes = Random.new.rand(5..6)
      # Check if the digit_codes match and generate the rest of the numbers accordingly
      case digit_codes
      when 6
        rand_byte = RandNum.fromZero 7
        reg_group = "0" + Random.new.rand(1..6).to_s
      when 5
        rand_byte = RandNum.fromZero 6
        reg_group_rand = [0..9, 100..397, 714..716].sample()
        reg_group = Random.new.rand(reg_group_rand)
        if (reg_group < 10) #Todo: Cleanup by making this a ternary to be cleaner
          reg_group = "00" + reg_group.to_s
        end
      when 4
        rand_byte = RandNum.fromZero 5
        reg_group_rand = [700..999, 3980..5499, 6860..7139, 7170..7319, 7900..7999, 8672..8675, 9730..9877].sample()
        reg_group = Random.new.rand(reg_group_rand)
        if (reg_group > 700 && reg_group < 999) #Todo: Cleanup by making this a ternary to be cleaner
          reg_group = "0" + reg_group.to_s
        end
      when 3
        rand_byte = RandNum.fromZero 4
        reg_group_rand = [55000..68599, 74000..77499, 77540..77639, 77650..77699, 77770..78999, 80000..86719, 86760..86979].sample()
        reg_group = Random.new.rand(reg_group_rand)
      when 2
        rand_byte = RandNum.fromZero 3
        reg_group_rand = [869800..915999, 916506..972999, 987800..998999].sample()
        reg_group = Random.new.rand(reg_group_rand)
      when 1
        rand_byte = RandNum.fromZero 2
        reg_group_rand = [7320000..7399999, 7750000..7753999, 7764000..7764999, 7770000..7776999, 9160000..9165059, 9990000..9999999].sample()
        reg_group = Random.new.rand(reg_group_rand)
      end
    end
    
    # Returns what is needed as a string
    return LANG + reg_group.to_s + rand_byte.to_s
  end
end