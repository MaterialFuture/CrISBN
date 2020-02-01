require "./spec_helper"

describe RandomISBN do
  it "Main Crystal File works" do
    RandomISBN.should_not eq(false || false) #Shouldn't be true or false
  end
  it "Checks the size of the English ISBN to make sure it's 16" do
    ((RandomISBN::English.new).size).should eq(13) #Make sure that it always prints 13 digits
  end
end

describe RandNum do
  it "Check RandNum, FromZero Works" do
    (RandNum.new.fromZero(1)).size.should eq(1)
    (RandNum.new.fromZero(2)).size.should eq(2)
    (RandNum.new.fromZero(3)).size.should eq(3)
    (RandNum.new.fromZero(4)).size.should eq(4)
    (RandNum.new.fromZero(5)).size.should eq(5)
    (RandNum.new.fromZero(6)).size.should eq(6)
    (RandNum.new.fromZero(7)).size.should eq(7)
    (RandNum.new.fromZero(8)).size.should eq(8)
    (RandNum.new.fromZero(9)).size.should eq(9)
    (RandNum.new.fromZero(0)).size.should eq(0)
  end
  it "Check RandNum, FromOne Works" do
    (RandNum.new.fromOne(1)).size.should eq(1)
    (RandNum.new.fromOne(2)).size.should eq(2)
    (RandNum.new.fromOne(3)).size.should eq(3)
    (RandNum.new.fromOne(4)).size.should eq(4)
    (RandNum.new.fromOne(5)).size.should eq(5)
    (RandNum.new.fromOne(6)).size.should eq(6)
    (RandNum.new.fromOne(7)).size.should eq(7)
    (RandNum.new.fromOne(8)).size.should eq(8)
    (RandNum.new.fromOne(9)).size.should eq(9)
    (RandNum.new.fromOne(0)).size.should eq(0)
  end
end
