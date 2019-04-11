# Exercise 1

# def expect_to_be_equal(x, y)
#   puts 'Test passes! :)' if x == true && y == true
#   puts 'Test fails! D:' if x == true && y == false
# end
#
# expect_to_be_equal(true, false)
# expect_to_be_equal(true, true)
#

# Exercise 2

# class Expect
#
#   def to_be_equal(x, y)
#     puts 'Test passes! :)' if x == true && y == true
#     puts 'Test fails! D:' if x == true && y == false
#   end
#
# end
#
# expect = Expect.new
# puts expect.to_be_equal(true, true)
# puts expect.to_be_equal(true, false)


# Exercise 3
#
# class Expect
#
#   #attr_reader :true_or_false
#
#   def initialize(true_or_false)
#     @true_or_false = true_or_false
#   end
#
#   def true_or_false
#     @true_or_false
#   end
#
#   def to_equal(x)
#     puts "Test passes! :)" if x == true
#     puts "Test fails! D:" if x == false
#   end
#
# end
#
# expect = Expect.new(true)
# puts expect.to_equal(true)
# puts expect


# Exercise 4
#
# class Expect
#
#   def initialize(value)
#     @value = value
#   end
#
#   def to(comparison)
#     if comparison == true
#       puts "Test passes! :)"
#     else
#       puts "Test fails! D:"
#     end
#   end
#
# end
#
#
# class Equal
#
#   def compare(y)
#     if y == true
#       true
#     else y == false
#       false
#     end
#   end
#
# end
#
#
# expect = Expect.new(true)
# equal = Equal.new
# expect.to(equal.compare(true))


class Expect

  def initialize(value)
    @value = value
  end

  def to(comparison)
    if comparison.value == @value
      puts "Test passes! :)"
    else
      puts "Test fails! D:"
    end
  end

end


class Equal

  attr_reader :value

  def initialize(value)
    @value = value
  end

end

def eq(value)
  Equal.new(value)
end

def expect(value)
  Expect.new(value)
end

expect(true).to eq true
