def hello_t(array)
 if block_given? 
    i = 0 
    while array.length > i 
      puts "my current iteration is #{i + 1}."
      yield array[i] # one element of the array will be pass.
      i += 1 # increasing the counter so all elements get operated on.
    end
  else 
    puts "no block was given!"
  end 
end


hello_t(["Tim", "Tom", "Jim"]) { |name|
  if name.start_with?("T")
    puts "Hello, #{name}"
  end 
}



















def learning_how_yield_works(string)
  if block_given?
    puts "the method is  currently running"
    yield(string)
    puts "the method is  back to running =D"
  else 
    puts "no block was given =/"
  end
end  

#learning_how_yield_works("yes") {|string| puts "did the yield stop the method from running? ##{string}"}

#learning_how_yield_works("yes")