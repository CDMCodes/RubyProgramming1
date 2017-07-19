def bubble_sort (arr)
#for each item in array
# compare item (A) to the one following (B)
# if A is bigger than B, switch their position
# If not do nothing (next)
# increment the index and loop
#puts(arr)
  for i in 0..arr.length-1
    for j in 0..arr.length-2
      first = arr[j]
      second = arr[j + 1]
      # puts first > second
      if first > second
        # puts first
        arr[j] = second
        arr[j + 1] = first
      end
    end
  end
  puts(arr)
  return(arr)
end


def bubble_sort_by(arr, &compare)
  for i in 0..arr.length-1
    for j in 0..arr.length-2
      first = arr[j]
      second = arr[j + 1]

      #we are assuming result of compare proc is negative, 0 or positive
      comparison = compare.call(first, second) #does this work?

      if comparison > 0
        # puts first
        arr[j] = second
        arr[j + 1] = first
      end
    end
  end
  puts(arr)
  return(arr)
end


def proctest(arr, &blck)
  arr.each_with_index{|el, indx| blck.call(el,indx)}
end

#bubble_sort([4,3,78,2,0,2])
#puts proctest([4,3,78,2,0,2]) {|num, indx| puts "This #{indx} element contains #{num}"}
bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end
