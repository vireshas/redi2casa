require 'spec_helper'

describe Redi2casa do
  context "sets" do
    KEY = "test_set"
    before(:each) do
      $r ||= Redi2casa.new(["localhost"], "redi2casa")
      $r.del(KEY, "set")
    end

    def r
      $r
    end

    context "sadd" do
      it "should add first element" do
        r.sadd KEY, "a"
        r.smembers(KEY).include?("a").should == true
      end

      it "should add second element" do
        r.sadd KEY, "a"
        r.sadd KEY, "b"
        r.smembers(KEY).include?("a").should == true
        r.smembers(KEY).include?("b").should == true
      end

      it "already added element should not be added again" do
        r.sadd KEY, "a"
        r.sadd KEY, "a"
        r.smembers(KEY).size.should == 1
      end
    end

    context "sadd_with_expire" do
      it "add a new element it should disapper after ttl" do
        r.sadd_with_expire KEY, 5, "a"
        r.smembers(KEY).size.should == 1
        sleep 7
        r.smembers(KEY).size.should == 0
      end
    end

    context "scard" do
      it "default size should be 0" do
        r.scard(KEY).should == 0
      end

      it "add 5 unique elements and size should be five" do
        r.sadd KEY, "a", "b", "c", "d", "e"
        r.scard(KEY).should == 5
      end
    end

    context "sismember" do
      it "add a element and it should be there in the set" do
        r.sadd KEY, "a", "b", "c", "d", "e"
        r.sismember(KEY, "a").should == true
        r.sismember(KEY, "d").should == true
      end

      it "random element should not be present in the set" do
        r.sadd KEY, "a"
        r.sismember(KEY, "b").should == false
      end
    end

    context "smembers" do
      it "add 5 members and this should be listed in smembers" do
        r.sadd KEY, "a", "b", "c", "d", "e"
        r.smembers(KEY).should == ["a", "b", "c", "d", "e"]
      end

      it "default should be empty set" do
        r.smembers(KEY).should == []
      end
    end

    context "spop" do
      it "removes random element from set" do
        r.sadd KEY, "a", "b", "c", "d", "e"
        k = r.spop(KEY)
        r.smembers(KEY).should == ["a", "b", "c", "d", "e"] - [ k ]
      end

      it "return nil incase set is empty" do
        r.spop(KEY).should == nil
      end
    end

    context "srem" do
      it "deletes the element if present" do
        r.sadd KEY, "a", "b", "c", "d", "e"
        r.srem KEY, "b"
        r.smembers(KEY).should == ["a", "c", "d", "e"]
      end

      it "ignores if element is not present" do
        r.sadd KEY, "a", "b", "c", "d", "e"
        r.srem KEY, "f"
        r.smembers(KEY).should == ["a", "b", "c", "d", "e"]
      end
    end
  end
end
