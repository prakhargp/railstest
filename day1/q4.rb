class Prime
  def check_prime(number)
    (2..Math.sqrt(number)).each do |num|
      if number % num == 0
        return false
      end
    end
    return true
  end
  def prime_to_n(n)
    (2..n).select { |number| check_prime(number) && number % 10 != 7 }
  end
end

obj = Prime.new
puts obj.prime_to_n(20)
