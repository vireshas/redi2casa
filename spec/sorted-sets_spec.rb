require 'spec_helper'

describe Redi2casa do
  context "sorted-sets" do
    KEY = "test_sorted-set"
    before(:each) do
      $r ||= Redi2casa.new(["localhost"], "redi2casa")
      $r.del(KEY, "sorted_set")
    end

    def r
      $r
    end
    
    context "zadd" do
      it "add one element with a score" do
        r.zadd KEY, 5, "a"
        r.zrangebyscore(KEY, 0).should == ["a"]
      end
      
      it "add already existing element with the same score" do
        r.zadd KEY, 5, "a"
        r.zadd KEY, 5, "a"
        r.zrangebyscore(KEY, 0).should == ["a"]
      end
      
      it "add two elements with same score" do
        r.zadd KEY, 5, "a"
        r.zadd KEY, 5, "b"
        r.zrangebyscore(KEY, 0).should == ["a", "b"]
      end
      
      it "add two elements with different score" do
        r.zadd KEY, 5, "a"
        r.zadd KEY, 6, "b"
        r.zrangebyscore(KEY, 0).should == ["a", "b"]
      end
    end
    
    context "zrangebyscore" do
      it "list elements from 0 to -1 should give all elements with positive score" do
        r.zadd KEY, 5, "a"
        r.zadd KEY, 6, "b"
        r.zadd KEY, 7, "c"
        r.zadd KEY, 8, "d"
        r.zrangebyscore(KEY, 0).should == ["a", "b", "c", "d"]
      end
      
      it "list elements with subset with specified range of scores" do
        # Ranges are exclusive
        r.zadd KEY, 5, "a"
        r.zadd KEY, 6, "b"
        r.zadd KEY, 7, "c"
        r.zadd KEY, 8, "d"
        r.zrangebyscore(KEY, 5, 8).should == ["b", "c"]
      end
    end
    
    context "zrem" do
      it "removed certain element from the zset and removing non existant member should be ignored" do
        r.zadd KEY, 5, "a"
        r.zadd KEY, 6, "b"
        r.zadd KEY, 7, "c"
        r.zadd KEY, 8, "d"
        r.zrem KEY, "c"
        r.zrem KEY, "z"
        r.zrangebyscore(KEY, 0).should == ["a", "b", "d"]
      end
    end
    
    context "zscore" do
      it "returns score of certain element in the zset and for non existant member score should be nil" do
        r.zadd KEY, 5, "a"
        r.zadd KEY, 6, "b"
        r.zadd KEY, 7, "c"
        r.zadd KEY, 8, "d"
        r.zscore(KEY, "c").should == 7
        r.zscore(KEY, "z").should == nil
      end
    end
  end
end