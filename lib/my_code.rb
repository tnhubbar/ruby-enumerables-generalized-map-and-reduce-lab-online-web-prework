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
  