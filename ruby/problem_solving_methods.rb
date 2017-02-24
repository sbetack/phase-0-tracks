#Release 0:

def search_index(arr, integer)
	  return_index = nil
	  counter = 0
	 	arr.each do |num| 
		  if arr[counter] == integer
		  return_index = counter
		  else
		 	counter+=1
		  end
 	end
return_index
end

test_array = [1,2,3,4,5,6,7]
p search_index(test_array,6)

#Release 1:
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
    else
      sum = fib_arr[counter-1] + fib_arr[counter-2]
      fib_arr << sum
    end
    counter += 1
  end
  fib_arr
end

p  fibonacci(6)
p fibonacci(100).last


#Release 2:
#insertion sort
# get an index counter starting at 1 stoping at (but not including) the length of the array
# use index to look at each item of the array
# while item we are looking at is smaller than the item before it
# swap items until you are at the index zero


def insertion_sort(arr)
	for index in 1...arr.length
		while (index > 0) && (arr[index-1] > arr[index]) 
		  	arr[index], arr[index-1] = arr[index-1], arr[index]   #swap "cheat" that we found online
		  	index -= 1
	  end
	end
	arr 
end

array= [6,5,4,3,2,1,7]
p insertion_sort(array) == [1,2,3,4,5,6,7]


