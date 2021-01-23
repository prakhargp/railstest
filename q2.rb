class Cylinder
    RADIUS = 10
    PI = 3.14 
    def volume(height)
        volume_of_cylinder = 2 * PI * RADIUS * height 
        return volume_of_cylinder
    end
end
newcylinder = Cylinder.new
puts newcylinder.volume(10)