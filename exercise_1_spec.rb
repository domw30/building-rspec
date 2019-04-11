
expect_to_be_equal(true, true)
"Test passes! :)"
expect_to_be_equal(true, false)
"Test fails! D:"


> Expect.new.to_be_equal(true, true)
=> "Test passes! :)"
> Expect.new.to_be_equal(true, false)
=> "Test fails! D:"


Expect.new(true).to_equal(true)
=> "Test passes! :)"
Expect.new(true).to_equal(false)
=> "Test fails! D:"


> Expect.new(true).to(Equal.new(true))
=> "Test passes! :)"
> Expect.new(true).to(Equal.new(false))
=> "Test fails! D:"
