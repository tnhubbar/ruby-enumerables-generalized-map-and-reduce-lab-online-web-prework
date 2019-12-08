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

def map(source_array)
  new = []
  i = 0
  while i < source_array.length
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end


def reduce(source_array, starting_point = nil)
  if starting_point 
    accum = starting_point
    i = 0 
  else accum = source_array[0] 
    i =1 
  end 
  while i < source_array.length
  accum = yield(accum, source_array[i])
  i+=1 
end 
accum
end
  