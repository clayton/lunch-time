require 'spec_helper'

describe Restaurant do
  before(:each) do
    
  end
  
  it "needs a name" do
    @joes = Restaurant.new(:price => 7, :name => "")
    @joes.save.should be_false
  end
end
