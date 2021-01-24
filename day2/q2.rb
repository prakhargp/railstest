class Polygon

def area(width,height)
  @width = width
  @height = height
  @area = @width * @height
end

end

class Square < Polygon
  def area(side)
    super(side,side)
  end
  def property
    puts "Area of square is #{@area}"
    pri_method
    pro_method
  end
  private
  def pri_method
    puts "This is a private method"
  end
  protected
  def pro_method
    puts "This is a protected method"
  end


end

class Rectangle < Polygon
  def area(length,breadth)
    super(length,breadth)
  end
  def property
    puts "Area of Rectangle is #{@area}"
  end
end

class Triangle < Polygon
  def area(base,height)
    @area =  base * height

  end
  def property
    puts "Area of Traingle is #{@area}"
  end
end


square_obj = Square.new
puts square_obj.area(5)
puts square_obj.property



rectangle_obj = Rectangle.new
puts rectangle_obj.area(2,4)
puts rectangle_obj.property

triangle_obj = Triangle.new
puts triangle_obj.area(2,5)
puts triangle_obj.property
