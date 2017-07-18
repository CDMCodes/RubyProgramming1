def bubble_sort (arr)
#for each item in array
# compare item (A) to the one following (B)
# if A is bigger than B, switch their position
# If not do nothing (next)
# increment the index and loop
puts(arr)
  for i in 0..arr.length-1
    for j in 0..arr.length-2
      first = arr[j]
      second = arr[j + 1] #this fails for final item in index
      # puts first > second
      if first > second
        # puts first
        arr[j] = second
        arr[j + 1] = first
      end
    end
  end
  puts(arr)
end


def bubble_sort_by(arr)

end


bubble_sort([4,3,78,2,0,2])
