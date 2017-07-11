def caesar_cipher(sentence, shift)
  #Create array of lowercase letters to shift through
  #Create array of uppercase letters for same
  results = []
  letters = sentence.split("")

  #loop through letters
    #if letter is a space (or any whitespace)
      #write same whitespace to results array

    #elsif letter is uppercase, use uppercase array
      #find matching index of current letter
      #increment index by shift factor - modulo to 26?
      #assign new letter to results array at this index
    #else use lowercase array
      #do all of the same as above, but with other array

    #join results array into a string


end
