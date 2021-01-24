class DivisionError < StandardError
  attr_reader :reason

  def initialize(reason)
    @reason = reason
  end
end

begin
  raise DivisionError, "Division Exception"
rescue DivisionError => e
  puts "There is a division error"
rescue Exception => e
  puts e
end
