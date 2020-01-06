#write your code here
def translate english
  words = english.split
  words.map do |word|
    pig_word(word)
  end.join(" ") #put them words back together
end

def pig_word word
  vowels = %w[a e i o u]
  first_letter = word[0].downcase
  #check if first letter is vowel or consonant
  if ["a", "e", "i", "o", "u"].include?(first_letter)
    #add 'ay' at the end of word
    word = word +"ay"
    return word
  else
    #otherwise gather cluster of consonants and loop till the first vowel
    cluster = []
    i = 0
    while(( vowels.include?(word[i]) ) == false)
      cluster << word[i]
      #special case: when we encounter 'qu' we need to gather both 'q' and 'u'
      if(word[i] == 'q')
        cluster << word[i + 1] # assuming the letter after q is going to be u...
      end
      i = i + 1
    end
    #pig latin: rest + cluster + 'ay'
    new_word = word[cluster.length..-1] + cluster.join + "ay"
    return new_word
  end
end


