require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "MyMath" do
  describe "Subtraction" do
    describe "when x is 100" do
      it "should be too big" do
        MyMath.subtract(100,5).should == "Too Big!"
      end
    end
    
    describe "when x is not 100" do
      it "should find the difference between two numbers" do
        MyMath.subtract(10,5).should == 5
        MyMath.subtract(10,5).should eql(5)
      end

      it "should return negative numbers" do
        MyMath.subtract(5,10).should == -5
      end
    end
  end
  
  describe "Addition" do
    it "should sum two numbers" do
      MyMath.add(5,5).should_not == 11
    end
  end
end

class MyMath
  def self.subtract(x,y)
    if x == 100
      "Too Big!"
    else
      x - y
    end
    
  end
  
  def self.add(x,y)
    x + y
  end
end

