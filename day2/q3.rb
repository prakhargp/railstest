class Vehicle
def initialize(x,y)
  @no_of_tyres = x
  @total_seat_count = y
end
  def moves(value)
    puts "This vehicle moves #{value}"
    puts "This vehicle has #{@no_of_tyres} tyres"
    puts "This vehicle has #{@total_seat_count} seats"
  end
end

class Car < Vehicle

  def moves
    super("slow")
  end
end

class Bike < Vehicle

  def moves
    super("fast")
  end
end


car_obj = Car.new(4,5)
car_obj.moves
bike_obj = Bike.new(2,2)
bike_obj.moves
