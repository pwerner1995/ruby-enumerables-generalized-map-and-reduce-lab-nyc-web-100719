# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i])) 
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0 )
  i = 0 
  total= starting_point
  while source_array.length > i do 
    total = yield(total, source_array[i])
    i+=1
    if total == 0 
      total = !!total 
    end 
  end
  p total
end