# Create a ruby block which takes an argument and multiply with 2

def multiply
    yield 2
end

multiply {|x| puts x*2}


# Implement a Proc which takes an argument and multiply with 2. Call this proc inside a loop


def proc_call(arg)
    [1,2,3].each { |x| arg.call(x) }
end

proc = Proc.new { |x| puts x*2 }
proc_call(proc)

#Implement a Lambda which takes an argument  and returns the output by multiply arg with 2. Call this lambda inside a loop and return modified array 


def multiple_lambda(arg)
    puts [1,2,3].map { |x| arg.call(x) }
end

mul = -> (y){ y*2 }
multiple_lambda(mul)
