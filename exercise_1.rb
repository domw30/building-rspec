def expect_to_be_equal(x, y)
  'Test passes! :)' if x == true && y == true
  'Test fails! D:' if x == true && y == false
end

puts expect_to_be_equal(true, false)
puts expect_to_be_equal(true, true)
