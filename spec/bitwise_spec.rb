require 'spec_helper'

describe Redi2casa do
  context "bitwise" do
    KEY = "test_bitwise"
    before(:each) do
      $r ||= Redi2casa.new(["localhost"], "redi2casa")
      $r.del(KEY, "sorted_set")
    end

    def r
      $r
    end
    it "set two bits to 1 and getbits" do
      r.set_bit KEY, 5, 1
      r.set_bit KEY, 10, 1
      r.get_bit(KEY, 5).should == 1
      r.get_bit(KEY, 10).should == 1
      r.get_bit(KEY, 8).should == 0
    end
    
    it "set two bits to 1 and set it back to 0 and then getbits" do
      r.set_bit KEY, 5, 1
      r.set_bit KEY, 5, 0
      r.get_bit(KEY, 5).should == 0
    end
    
    it "clear bits should clear all the set bits" do
      r.set_bit KEY, 5, 1
      r.set_bit KEY, 10, 1
      r.clear_bits KEY
      r.get_bit(KEY, 5).should == 0
      r.get_bit(KEY, 10).should == 0
    end
    
    it "unset bits are by default 0" do
      r.get_bit(KEY, 25).should == 0
    end
  end
end