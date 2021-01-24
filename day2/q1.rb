class Rectangle

  attr_reader :area
  attr_writer :width, :height

  def area
    @area = @width*@height
  end

end

obj = Rectangle.new
obj.width = 10
obj.height = 10
puts obj.area
