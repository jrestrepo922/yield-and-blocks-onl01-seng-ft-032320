def hello_t(array)
  i = 0 
  
  while i < array.length 
    yield array[i]
    i = i + 1 
  end
end


def learning_how_yield_works(string)
  if block_given?
    puts "the method is  currently running"
    yield(string)
    puts "the method is  back to running =D"
  else 
    puts "no block was given =/"
  end
end  

learning_how_yield_works("yes") {|string| puts "did the yield stop the method from running? #{string}"}

