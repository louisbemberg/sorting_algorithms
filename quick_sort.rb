def quicksort(array)
  return array if array.length <= 1

  pivot = array.sample
  left = array.select { |e| e < pivot }
  right = array.select { |e| e > pivot }
  quicksort(left) + [pivot] + quicksort(right)
end

random_array = []
50.times do
  random_array << rand(0..100)
end
p quicksort(random_array)
