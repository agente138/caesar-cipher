def bubble_sort(array)
  sorted = false
  until sorted
    swap = false
    for i in 0...array.length-1
      if array[i] > array[i+1]
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
        swap = true
      end
    end
    sorted = true unless swap
  end
  array
end

p bubble_sort([4,3,78,2,0,2])