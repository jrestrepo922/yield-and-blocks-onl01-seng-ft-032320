def hello_t(array)
  i = 0 
  
  while i < array.length 
    yield array[i]
    i = i + 1 
  end
end


def learning_how_yield_works(string)
  puts "the method is  currently running"
  yield(string)
  puts "the method is  back to running =D"
end  

learning_how_yield_works("yes") {|string| puts "did the yield stop the method from running? #{string}"}