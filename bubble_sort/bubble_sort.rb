def bubble_sort(array)
  temp = nil
  swaps = 0
  i = 0
  until array[i+1] == nil do
    if array[i] > array[i+1]
      temp = array[i]
      array[i] = array[i+1]
      array[i+1] = temp
      temp = nil
      swaps += 1
      p "Swap ##{swaps}"
      p array
    end
    i += 1
    if array[i+1] == nil
      i = 0
    end
    break if array == array.sort
  end
end

bubble_sort([4,3,78,2,0,2])