def stockpicker(daysarr)

  pick = {"low" => daysarr.sort[0],
    "lowday" => nil,
    "high" => daysarr.sort[-1],
    "highday" => nil}

  daysarr.each_with_index do |val, index|
    #if number is smaller than initial, replace it
    if val <= pick["low"]
      pick["low"] = val
      pick["lowday"] = index
    else val >= pick["high"]
      pick["high"] = val
      pick["highday"] = index
    end
  end
  puts "Low day = #{pick["lowday"]},  High day = #{pick["highday"]}"
end


stockpicker([17,3,6,9,15,8,6,1,10])
