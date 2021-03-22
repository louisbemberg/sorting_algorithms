# strategy:
# scan the array for the smallest element and add it to the output
# rinse & repeat

# approach using 2 arrays & ruby's min function
# Makes the initial array empty and returns a new one
def selection_sort1(array)
  result = []
  result << array.delete_at(array.index(array.min)) until array.empty?
  result
end

# approach using 2 arrays & without ruby's min function
# Makes the initial array empty and returns a new one
def selection_sort2(array)
  result = []
  until array.empty?
    min = array[0]
    array.each do |x|
      min = x if x < min
    end
    result << array.delete_at(array.index(min))
  end
  result
end

# approach using only the initial array
def selection_sort3(array)
  n = array.length
  n.times do |i|
    # assume the min number is the leftmost one, until proven otherwise
    minimum_index = i
    # checking all the digits to the right of i
    ((i + 1)..n - 1).each do |j|
      # if one of those digits is smaller than the one at i, we have a new min
      minimum_index = j if array[j] < array[minimum_index]
    end
    # once the min has been found, we swap it with the leftmost one.
    array[i], array[minimum_index] = array[minimum_index], array[i]
    p array
  end
  array
end

test_array = [17, 2, 16, 6, 1, 18, 9, 15, 12, 4, 3, 11]
p selection_sort3(test_array)
