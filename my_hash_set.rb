#My own creation of a Set built on top of Ruby's Hash class

class MyHashSet
  
  def initialize
    @store = {}
  end
  
  def insert(el)
    @store[el] = true
  end
  
  def include?(el)
    @store.include?(el)
  end
  
  def delete(el)
    flag = include?(el)
    @store.delete(el)
    flag
  end
  
  def to_a
    @store.keys.to_a
  end
   
  def union(set2)
    returnset = MyHashSet.new
    (self.to_a | set2.to_a).each do |el|
      returnset.insert(el)
    end
    returnset
  end 
  
  def intersect(set2)
    returnset = MyHashSet.new
    (self.to_a & set2.to_a).each do |el|
      returnset.insert(el)
    end
    returnset
  end
  
  def minus(set2)
    returnset = MyHashSet.new
    (self.to_a - set2.to_a).each do |el|
      returnset.insert(el)
    end
    returnset
  end
end

set1 = MyHashSet.new
set2 = MyHashSet.new

set1.insert("bludi")
set1.insert("bludla")
set1.insert("bludiasdf")

set2.insert("a")
set2.insert("bludla")
set2.insert("bludi")

p set1.minus(set2)
