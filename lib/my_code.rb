# n this lab, you should write a generalized `map` and `reduce` method. Both of
# these methods will take a block and require that you pass information between
# the method and the block. Write your code in the `lib/my_code.rb` file.

# ### `map`

# Your implementation should expect a source array and a block. All the tests
# will pass an `Array` and a block.

# Remember, `map` returns a new `Array`.

# ### `reduce`

# Your implementation should expect a source array and _optionally_ (recall
# optional parameters in methods!) a starting value. All the tests will pass an
# `Array` and sometimes, a starting point.

# Remember, `reduce` returns a value.

def map(s)
  new = []
  i = 0
  while i < s.length
    new.push(yield(s[i]))
    i += 1
  end
  new
end

def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end