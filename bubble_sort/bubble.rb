# frozen_string_literal: true

def bubble_sort(array)
  arr_copy = array.map(&:clone)
  arr_copy.length.times do
    swapped = false
    arr_copy.each_with_index do |_value, i|
      next if arr_copy[i + 1] == nil

      if arr_copy[i] > arr_copy[i + 1]
        arr_copy[i], arr_copy[i + 1] = arr_copy[i + 1], arr_copy[i]
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
