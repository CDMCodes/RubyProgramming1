def stockpicker2(daysarr)

  dayarr = []
  diffarr = []

  for i in 0...daysarr.length-1
    # puts i
    # puts daysarr[i]
    for j in i+1...daysarr.length-1
      diff = daysarr[j] - daysarr[i]
      subarr = [i, j]
      dayarr << subarr
      diffarr << diff
    end
  end
  best = diffarr.index(diffarr.max)
  days = dayarr[best]
  puts "Buy on #{days[0]} sell on #{days[1]}"

end

stockpicker2([17,3,6,9,15,8,6,1,10])
