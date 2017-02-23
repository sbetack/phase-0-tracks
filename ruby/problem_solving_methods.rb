AR = [1,2,3,4,5,6,7]
def search_index(ar, integer)
	  return_index = nil
	  counter = 0
	 	ar.each do |num| 
		  if ar[counter] == integer
		  return_index = counter
		  else
		 	counter+=1
		  end
 	end
p return_index
end
search_index(AR,6)



#fibonacci
def fibonacci(length_of_arr)
  counter = 0
  sum = 0
  fib_arr = []
  until counter == length_of_arr
    if counter == 0
      fib_arr << 0
    elsif counter == 1 
      fib_arr << 1
    elsif
      sum = fib_arr[counter-1] + fib_arr[counter-2]
      fib_arr << sum
    end
    counter += 1
  end
  fib_arr
end

fibonacci(6)
fibonacci(100)[-1]

#insertion sort
def insertion_sort(arr)
	for i in 1..arr.length-1
		j = i
		  while (j > 0) && (arr[j-1] > arr[j]) 
		  arr[j], arr[j-1] = arr[j-1], arr[j]   #swap "cheat" that we found online
		  j -= 1
		  end
	end
	arr 
end

array= [6,5,4,3,2,1,7]
insertion_sort(array)