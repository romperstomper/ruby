class Book
  attr_accessor :title
# write your code here

  def title=(new)
    preps = ['and', 'the', 'is', 'a', 'of', 'in', 'an']
    res = []
    words = new.split
    latter = false
    words.each do |x|
      x = x.capitalize unless preps.include?(x) && latter == true
      res.push(x)
      latter = true
    end
    @title =  res.join(" ")
  end
end
