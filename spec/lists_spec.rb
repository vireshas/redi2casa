require 'spec_helper'

describe Redi2casa do
  context "lists" do
    KEY = "test_list"
    before(:each) do
      @r = Redi2casa.new(["localhost"], "redi2casa")
      @r.del(KEY, "list")
    end

    def r
      @r
    end

    context "lpop" do
      it "pop the first element out" do
        r.lpush KEY, "a"
        r.lpush KEY, "b"
        r.lpush KEY, "f"
        r.lpush KEY, "g"
        r.lpop(KEY).should == "g"
      end
      
      it "return nil if the list is empty" do
        r.lpop(KEY).should == nil
      end
    end
    
    context "lpush & lrange" do
      it "pushes to the start of the list" do
        r.lpush KEY, "a"
        r.lpush KEY, "b"
        r.lpush KEY, "f"
        r.lpush KEY, "g"
        r.lrange(KEY, 0, -1).should == ["g", "f", "b", "a"]
        r.lrange(KEY, 2, 3).should == ["b", "a"]
      end
    end
    
    context "lrange" do
      it "return empty list in case the list is empty" do
        r.lrange(KEY, 0, -1).should == []
      end
    end
    
    context "ltrim" do
      it "trims the list to specified ranges" do
        r.lpush KEY, "a"
        r.lpush KEY, "b"
        r.lpush KEY, "f"
        r.lpush KEY, "g"
        r.ltrim(KEY, 0, 2)
        r.lrange(KEY, 0, -1) == ["g", "f", "b"]
        r.ltrim(KEY, 1, 2) 
        r.lrange(KEY, 0, -1) == ["f", "b"]
      end
    end
    
    context "lflush" do
      it "empties the list" do
        r.lpush KEY, "a"
        r.lpush KEY, "b"
        r.lpush KEY, "f"
        r.lpush KEY, "g"
        r.lflush KEY
        r.lrange(KEY, 0, -1) == []
      end
    end
  end
end