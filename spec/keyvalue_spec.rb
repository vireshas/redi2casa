require 'spec_helper'

describe Redi2casa do
  context "keyvalue" do
    KEY = "test_keyvalye"
    before(:each) do
      $r ||= Redi2casa.new(["localhost"], "redi2casa")
      $r.del(KEY, "keyvalue")
    end

    def r
      $r
    end
    
    it "get and set -- before setting element should be nil then the set value after set" do
      r.get(KEY).should == nil
      r.set(KEY, "z")
      r.get(KEY).should == "z"
    end
    
    it "get and setex the set key should remain for ttl only" do
      r.setex(KEY, 5, "z")
      r.get(KEY).should == "z"
      sleep 7
      r.get(KEY).should == nil
    end
    
    context "mget" do
      it "should get all the values set and nil for non-set values" do
        KEY1 = "keyvalue2"
        r.set(KEY, "5")
        r.set(KEY1, "3")
        r.mget([KEY, "abc", KEY1]).should == ["5", nil, "3"]
        r.del(KEY1, "keyvalue")
      end
    end
  end
end