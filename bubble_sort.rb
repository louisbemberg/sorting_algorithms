# frozen_string_literal: true

# Bubble Sort
# Probably the worst sorting algorithm ever
# 1. take the first element of an array, and compare it to the next.
# if the element is bigger than the next, swap them.
# If not, don't swap, and instead keep going with the bigger element.
# Once you reach the end of the array, restart.

random_array = [2, 5, 1, 3, 4]

# 20_000.times do
#   random_array << rand(1..20_000)
# end

def bubble_sort(array)
  n = array.length
  start = Time.now
  counter = 0
  loop do
    finished = true
    counter += 1
    (1..n - 1).each do |i|
      counter += 1
      if array[i - 1] > array [i]
        array[i - 1], array[i] = array[i], array[i - 1]
        finished = false
      end
    end
    break if finished
  end
  finish = Time.now
  p "Iterated #{counter} times. Done in #{format('%f', (finish - start))} seconds."
  array
end

p bubble_sort(random_array)
