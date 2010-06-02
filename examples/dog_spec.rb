require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class Dog
  attr_accessor :name, :size, :color
  
  def initialize(attrs)
    self.name = attrs[:name]
    self.size = attrs[:size]
    self.color = attrs[:color]
  end
  
  def self.packify(dogs)
    dogs.sort_by(&:name)
  end
  
  def small?
    self.size == "small"
  end
end

describe "Dog" do
  before(:each) do
    @bruno = Dog.new({:name  => "Bruno", 
                     :size  => "small", 
                     :color => "fawn"})
    @fido  = Dog.new({:name  => "Fido",
                     :size  => "large",
                     :color => "black"})
    @cracker  = Dog.new({:name  => "Cracker",
                        :size  => "medium",
                        :color => "white"})
  end
  
  describe "Pack of Dogs" do
    
    before(:each) do
      @bently = Dog.new({:name => "Bently", :size => "large", :color => "white"})
    end
    
    it "should be an array of dogs" do
      Dog.packify([@bruno, @fido]).should be_kind_of(Array)
    end
    
    it "should not include white dogs" do
      Dog.packify([@bruno, @fido]).should_not include(@cracker)
    end
  end

  describe "Small?" do
    it "should know when it's small" do
      @bruno.small?.should be_true
      @fido.small?.should be_false
      @bruno.small?.should_not be_false
    end
        
  end
end