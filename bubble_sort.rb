# Bubble Sor for sorting integers
def bubble_sort(array)
  index = 0
  while index < array.size - 1
    if array[index] > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
      index = 0
    else
      index += 1
    end
  end
  puts "Sorted Array = #{array}"
end

# Bubble Sor for sorting strings with the help of yield keyword
def bubble_sort_by(arr)
  flag_sort = false
  until flag_sort
    flag_sort = true
    arr.each_with_index do |value1, index|
      break if index == arr.size - 1

      value2 = arr[index + 1]
      comp = yield(value1, value2)
      next unless comp.positive?

      arr[index] = value2
      arr[index + 1] = value1
      flag_sort = false
    end
  end
  puts "Sorted Array = #{arr}"
end

array = [4, 3, 78, 2, 0, 2]
bubble_sort array

bubble_sort_by(%w[hi hel0l hey kkt l]) { |left, right| left.length <=> right.length }
