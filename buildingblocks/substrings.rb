def substrings (term, dictionary)
  #need to drop punctuation
  term = term.gsub(/[^A-Za-z][^\w]/,"")
  term = term.downcase.split(" ")
  results = Hash.new(0)

  #For each item in term
  term.each do |srch|
  #Loop through dictionary
    dictionary.each do |comp|
      #do string match on term and dictionary item
      #puts "search term is #{srch} and dictionary term is #{comp}"
     if srch.match?(comp)
        #if match, increment count for results hash key of the substring
        #puts(srch.match(comp))
        results[comp] += 1
     end
    end
  end
  #return hash listing each substring found in dictionary, and # of times
  results.each do |key, val|
    puts "#{key}: #{val}"
  end
  return results
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i",
   "low", "own", "part", "partner", "sit"]
#substrings("below", dictionary)
substrings("Howdy partner, sit down!, How's it going?", dictionary)
