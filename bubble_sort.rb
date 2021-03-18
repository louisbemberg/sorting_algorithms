# frozen_string_literal: true

# Bubble Sort
# Probably the worst sorting algorithm ever
# 1. take the first element of an array, and compare it to the next.
# 2. if the element is bigger than the next, swap them.
# 3. If not, don't swap, and instead keep going with the bigger element.
# 4. Once you reach the end of the array, restart.
# 5. If no changes were made during steps 2-4, the sorting is done.

random_array = []

20_000.times do
  random_array << rand(1..20_000)
end

def bubble_sort(array)
  n = array.length
  # start = Time.now # Uncomment to measure efficiency
  # counter = 0 # Uncomment to measure efficiency
  loop do
    finished = true
    # counter += 1 # Uncomment to measure efficiency
    (1..n - 1).each do |i|
      # counter += 1 # Uncomment to measure efficiency
      if array[i - 1] > array [i]
        array[i - 1], array[i] = array[i], array[i - 1]
        finished = false
      end
    end
    break if finished
  end
  # finish = Time.now # Uncomment to measure efficiency
  # p "Iterated #{counter} times. Done in #{format('%f', (finish - start))} seconds." # Uncomment to measure efficiency
  array
end

p bubble_sort(random_array)
