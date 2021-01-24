class Add
    SECOND = 2
    @@fourth = 2
    def adding(first)
        @third = first
        puts first+SECOND+@third+@@fourth
    end
end

obj = Add.new
obj.adding(2) 
