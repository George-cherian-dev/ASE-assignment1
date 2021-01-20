# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr_sum = 0
  arr.each do |val|
    arr_sum = arr_sum + val
  end
  return arr_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort! {|a, b| b <=> a} 
  arr_sum = 0
  index = 0
  arr.each do |a| 
    arr_sum = arr_sum + a
    index = index + 1
    if index >=2
      break
    end
  end
  puts arr_sum
  return arr_sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  index = 0;
  arr.each do |a| 
    loop_index = index + 1
    while loop_index < (arr.length) do
      arr_sum = a + arr[loop_index]
      loop_index = loop_index + 1;
      if arr_sum == n
        return true
      end
    end
    index = index + 1
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

puts sum_to_n? [3],2   
puts sum_to_n?([3, 0, 5], 5)
puts sum_to_n?([-1, -2, 3, 4, 5, -8], -3)
puts sum_to_n?([-1, -2, 3, 4, 5, -8], 12)
puts sum_to_n?([-1, -2, 3, 4, 6, -8], 12)
