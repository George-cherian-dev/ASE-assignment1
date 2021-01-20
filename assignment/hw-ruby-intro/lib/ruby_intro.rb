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
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.upcase
  first_char = s[0]
  vowels = ['A', 'E', 'I', 'O', 'U']
  if s.to_s.strip.empty?
    return false
  end
  if first_char.match?(/[[:alpha:]]/)
    
    if vowels.any? { |vowel| vowel == first_char }
      return false
    end
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.to_s.strip.empty?
    return false
  end
  if s.delete('01') == ''
    last_two_char = ""
    index = s.length
    loopcounter = 0
    while index >= 0 do
      loopcounter = loopcounter + 1
      index = index - 1
      last_two_char = last_two_char + s[index]
      if loopcounter == 2
        break
      end
    end
    if last_two_char == "00" or last_two_char == "0"
      return true
    end
    return false
  end
  return false
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
