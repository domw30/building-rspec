# Building Rspec

The aim of this exercise is to learn about tools by building them yourself.

I am going to build RSpec, step by step.

In the process, I will attempt to prove that our tools aren't magic. They're made up of simple concepts that we can understand, with enough time and thoughtfulness. 

The exercise structure is stated below.

## Exercise 1
We won't be using RSpec today — we'll be building our own version of it. So don't worry about requiring it or installing it.

Let's look at a trivial RSpec test. We're not going to build this yet — but this is what we're working towards.

```
describe "a simple test" do
  it "works" do
    expect(true).to eq true
  end
end
```
We're going to write the code to make this work:
```
expect(true).to eq true
```

To make our job a little easier, we're going to simplify it:
```
expect_to_be_equal(true, true)
```
And instead of producing a nice error message, let's start with this example:
```
> expect_to_be_equal(true, true)
=> "Test passes! :)"
> expect_to_be_equal(true, false)
=> "Test fails! D:"
```

Go ahead and implement the expect_to_be_equal method.

## Exercise 2
Here's where I cheat a little bit — RSpec uses some fancy Ruby code to make the syntax more readable, but for #reasons we're going to uglify it again.

Write the code to make this work:
```
> Expect.new.to_be_equal(true, true)
=> "Test passes! :)"
> Expect.new.to_be_equal(true, false)
=> "Test fails! D:"
```
## Exercise 3
Now write the code to make this work:
```
> Expect.new(true).to_equal(true)
=> "Test passes! :)"
> Expect.new(true).to_equal(false)
=> "Test fails! D:"
```
## Exercise 4
Here's where it gets a little tougher.

Get to this:
```
> Expect.new(true).to(Equal.new(true))
=> "Test passes! :)"
> Expect.new(true).to(Equal.new(false))
=> "Test fails! D:"
```
This exercise involves a way of relating classes together that you won't have used much yet.

Have a solid go at figuring out how it might work — if you don't come up with an idea after 5 minutes, scroll down to the tip.

>
>>
>>>
>>>>
>>>>>
>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>
>>
>>>
>>>>
>>>>>
>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>
>>
>>>
>>>>
>>>>>
>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>
Tip
Let's zoom in on Equal:

Get to this:

Note — we're talking about `Equal`, not `Expect`
```
> Equal.new(true).compare(true)
=> true
> Equal.new(true).compare(false)
=> false
```
Then, consider this — don't worry if yours is a bit different:
```
class Expect
  def initialize(value)
    @value = value
  end

  def to(comparison)
    if # ... fill in this gap ...
      puts "Test passed! :)"
    else
      puts "Test failed! :("
    end
  end
end
```
## Conclusion
So here we are:
```
> Expect.new(true).to(Equal.new(true))
=> "Test passes! :)"
> Expect.new(true).to(Equal.new(false))
=> "Test fails! D:"
```
The RSpec version looks like this:
```
expect(true).to eq true
```
We're not too far. Let's create some helper methods to make ours look more like RSpec:
```
def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

expect(true).to(eq(true))
```
## => "Test passes! :)"
And though you might not know the rules, you'll recall that in certain circumstances ruby lets you omit parentheses. So:
```
expect(true).to eq true
```
And that's it!
