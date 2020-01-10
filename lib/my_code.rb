# Your Code Here
def map(source_array)
  answer = []
  i = 0 
  while i < source_array.length 
  answer.push (yield(source_array[i]))
  i += 1 
end 
answer 
end 

def reduce(source_array, starting_point=nil)
  if starting_point
    sum = starting_point
    counter = 0 
  else 
    sum = source_array[0]
    counter = 1 
  end 
  
  while counter < source_array.length #loop over array 
  sum = yield(sum, source_array[counter]) #pass in the value of sum and add that number to next element. 
  counter += 1
end 
sum 
end 