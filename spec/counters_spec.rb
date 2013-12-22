require 'spec_helper'

describe Redi2casa do
  context "counters" do
    KEY = "test_counters"
    before(:each) do
      $r ||= Redi2casa.new(["localhost"], "redi2casa")
    end
    
    def r
      $r
    end
    
    it "hincryby" do
      a = r.hget(KEY, "c1", "counter")
      r.hincrby(KEY, "c1", 1)
      r.hget(KEY, "c1", "counter").should == a + 1
      r.hincrby(KEY, "c1", 5)
      r.hget(KEY, "c1", "counter").should == a + 6
    end
    
    it "hkeys" do
      r.hincrby(KEY, "c1")
      r.hincrby(KEY, "c2")
      r.hkeys(KEY, "counter").include?("c1").should == true
      r.hkeys(KEY, "counter").include?("c2").should == true
    end
    
    it "hlen" do
      r.hincrby(KEY, "c1")
      r.hincrby(KEY, "c2")
      r.hlen(KEY, "counter").should >= 2
    end
    
    it "hget" do
      a = r.hget(KEY, "c1", "counter")
      r.hincrby(KEY, "c1", 5)
      r.hget(KEY, "c1", "counter").should == a + 5
    end
    
    it "hmget" do
      a = r.hget(KEY, "c1", "counter")
      b = r.hget(KEY, "c2", "counter")
      r.hmget(KEY, "counter", "c1", "c2").should == [ a, b]
    end
    
    it "hgetall" do
      a = r.hget(KEY, "c1")
      b = r.hget(KEY, "c2")
      resp = r.hgetall(KEY, "counter")
      resp["c1"].should == a
      resp["c2"].should == b
    end
  end
end