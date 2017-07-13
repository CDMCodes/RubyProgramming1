def caesar_cipher(sentence, shift)
  #Create array of uppercase and lowercase letters to shift through
  lowers = ("a".."z").to_a
  uppers = ("A".."Z").to_a

  #Create empty array for results, and split input sentence
  results = []
  letters = sentence.split(//)
  #puts letters
  #loop through letters, shifting letters and just adding non-letters
  letters.each do |l|
    if (lowers.index(l) != nil)
      start = lowers.index(l)
      #puts "lowers at index #{start}"
      stop = (start + shift) % 26
      results << lowers[stop]
    elsif (uppers.index(l) != nil)
      start = uppers.index(l)
      #puts "uppers at index #{start}"
      stop = (start + shift) % 26
      results << uppers[stop]
    else
      #puts "#{l} is not  a letter"
      results << l
    end
  end
results = results.join
puts results
end

caesar_cipher("Test this",2)
caesar_cipher("What a string!", 5)
