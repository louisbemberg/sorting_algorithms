# Concept:
# for each number in the array, from left to right,
# we move it to the left as long as it is smaller as its left neighbor
# Repeat for each number
# Incredibly inefficient as it exponentially gets worse as array size increases.

def insertion_sort(array)
  array.length.times do |i|
    while i > 0
      if array[i - 1] > array[i]
        array[i], array[i - 1] = array[i - 1], array[i]
      end
      i -= 1
    end
  end
  array
end

test_array = [5, 6, 3, 4, 8, 7, 11, 1, 45, 19, 2, 10]
p insertion_sort(test_array)

random_array = []
20_000.times do
  random_array << rand(0..100)
end

p insertion_sort(random_array)
