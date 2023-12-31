# frozen_string_literal: true

def bubble_sort(array)
  arr_copy = array.map(&:clone)
  arr_copy.length.times do |i|
    swapped = false
    for j in 0..(arr_copy.length - i - 2)
      if arr_copy[j] > arr_copy[j + 1]
        arr_copy[j], arr_copy[j + 1] = arr_copy[j + 1], arr_copy[j]
        swapped = true
      end
    end
    break if swapped == false
  end
  arr_copy
end

array = [4, 3, 78, 2, 0, 2]
p bubble_sort(array)
p array
