require 'spec_helper'

describe Redi2casa do
  context "hashes" do
    KEY = "test_hash"
    before(:each) do
      @r = Redi2casa.new(["localhost"], "redi2casa")
      @r.del KEY, "hash"
    end
    def r
      @r
    end

    context "hdel & hget" do
      it "should delete a entry already present" do
        r.hset KEY, "a", "5"
        r.hget(KEY, "a", "hash").should == "5"
        r.hdel(KEY, "a", "hash")
        r.hget(KEY, "a", "hash").should == nil
      end

      it "should ignore if the entry is not already present" do
        r.hset(KEY, "b", "25")
        r.hdel(KEY, "a", "hash")
        r.hget(KEY, "b", "hash").should == "25"
        r.hget(KEY, "a", "hash").should == nil
      end
    end

    context "hget" do
      it "should get item which is already set" do
        r.hset KEY, "a", "5"
        r.hget(KEY, "a", "hash").should == "5"
      end

      it "should return nil if the element dows not exist" do
        r.hget(KEY, "a", "hash").should == nil
      end
    end

    context "hgetall" do
      it "get all elements as a hash" do
        r.hset KEY, "a", "5"
        r.hset KEY, "b", "10"
        r.hset KEY, "c", "15"
        r.hgetall(KEY, "hash").should == {"a" => "5", "b" => "10", "c" => "15"}
      end

      it "should return empty hash if it does not exist" do
        r.hgetall(KEY, "hash").should == {}
      end
    end

    context "hlen" do
      it "returns number of elements in the hash" do
        r.hset KEY, "a", "5"
        r.hset KEY, "b", "10"
        r.hset KEY, "c", "15"
        r.hset KEY, "d", "15"
        r.hlen(KEY).should == 4
      end

      it "returns 0 if hash does not exists" do
        r.hlen(KEY).should == 0
      end
    end

    context "hmget" do
      it "returns multiple elements in a hash" do
        r.hset KEY, "a", "5"
        r.hset KEY, "b", "10"
        r.hset KEY, "c", "15"
        r.hset KEY, "d", "15"
        r.hmget(KEY, "hash", "a", "b", "f").should == ["5", "10", nil]
      end
    end

    context "hset" do
      it "sets a value to hash" do
        r.hset KEY, "z", "2000"
        r.hget(KEY, "z", "hash").should == "2000"
      end
    end
  end
end
