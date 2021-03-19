# Recursively splits array intp halves
def merge_sort(array)
  return array if array.length <= 1

  n = array.length
  middle = n / 2
  left_half = merge_sort(array[0...middle])
  right_half = merge_sort(array[middle...n])
  merge_arrays(left_half, right_half)
end

# takes two sorted arrays and merges them into a sorted one
def merge_arrays(left, right)
  sorted_array = []
  # this works with the assumption that the 2 arrays are sorted themselves
  while !left.empty? && !right.empty?
    sorted_array << (left[0] < right[0] ? left.shift : right.shift)
  end
  # adding left and right in case the length of the two arrays wasn't the same
  sorted_array + left + right
end

random_array = []
50.times do
  random_array << rand(0..100)
end

p merge_sort(random_array)
