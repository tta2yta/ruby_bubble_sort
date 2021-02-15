#Bubble Sor for sorting integers
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
  puts array
end

#Bubble Sor for sorting strings with the help of yield keyword
def bubble_sort_by(arr)
flag_sort=false
until flag_sort
  flag_sort=true
end

end

array = [4, 3, 78, 2, 0, 2]
puts bubble_sort array
