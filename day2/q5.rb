class Size
def size_method
  puts "This is the original method"
end
end

obj = Size.new
obj.size_method

def obj.size_method
  puts "This is the new size method"
end

obj.size_method
