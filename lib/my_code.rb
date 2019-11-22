# Your Code Here
 def map(array)
   new = []
   i = 0
   while i < array.length
     new.push(yield(array[i]))
     i += 1
   end
   new
 end

def reduce(array, sv = nil)
  if sv
    sum = sv
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
    sum = yield(sum, array[i], 0.6)
    i += 1
  end
  sum
end
