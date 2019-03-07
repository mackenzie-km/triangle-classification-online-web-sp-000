class Triangle
  attr_accessor :length1, :length2, :length3
  
  class TriangleError < StandardError
    def message 
      "This is not a real triangle!"
    end 
  end 
  
def initialize(length1, length2, length3)
  @length1 = length1
  @length2 = length2
  @length3 = length3
end 

def valid?
   if (@length1 + @length2 <= @length3) ||  (@length2 + @length3 <= @length1) ||  (@length1 + @length3 <= @length2) 
    false
  elsif (@length1 || @length2 || @length3) <= 0
    false
end 
end

def kind 
if valid? == false 
    raise TriangleError
  elsif (@length1 == @length2 && @length1 == @length3)
    :equilateral
  elsif (@length1 == @length2) || (@length2 == @length3) || (@length3 == @length1) 
    :isosceles 
  else 
    :scalene
end 
end

end 
