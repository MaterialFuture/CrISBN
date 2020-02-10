require "./spec_helper"

describe ISBN do
  it "Main Crystal File works" do
    ISBN.should_not eq(false || false) #Shouldn't be true or false
  end
  it "Checks the size of the English ISBN to make sure it's 13" do
    ((ISBN::English.new).size).should eq(13) #Make sure that it always prints 13 digits
  end
  it "Checks to make sure the radom isbn is valid" do
    (ISBN::IsValid.new(ISBN::English.new)).should eq(true) #Make sure that it always prints 13 digits
  end
end

describe RandNum do
  it "Check RandNum, FromZero Works" do
    (RandNum.fromZero(1)).size.should eq(1)
    (RandNum.fromZero(2)).size.should eq(2)
    (RandNum.fromZero(3)).size.should eq(3)
    (RandNum.fromZero(4)).size.should eq(4)
    (RandNum.fromZero(5)).size.should eq(5)
    (RandNum.fromZero(6)).size.should eq(6)
    (RandNum.fromZero(7)).size.should eq(7)
    (RandNum.fromZero(8)).size.should eq(8)
    (RandNum.fromZero(9)).size.should eq(9)
    (RandNum.fromZero(0)).size.should eq(0)
  end
  it "Check RandNum, FromOne Works" do
    (RandNum.fromOne(1)).size.should eq(1)
    (RandNum.fromOne(2)).size.should eq(2)
    (RandNum.fromOne(3)).size.should eq(3)
    (RandNum.fromOne(4)).size.should eq(4)
    (RandNum.fromOne(5)).size.should eq(5)
    (RandNum.fromOne(6)).size.should eq(6)
    (RandNum.fromOne(7)).size.should eq(7)
    (RandNum.fromOne(8)).size.should eq(8)
    (RandNum.fromOne(9)).size.should eq(9)
    (RandNum.fromOne(0)).size.should eq(0)
  end
end
