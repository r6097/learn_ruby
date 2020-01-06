#write your code here
def echo(phrase)
    phrase
end
def shout(phrase)
    phrase.upcase
end
def repeat(phrase, amount = 2)
    new_string = ""
    while(amount != 0)
        new_string = new_string + "#{phrase} "
        amount = amount -1
    end
    new_string[0...-1]
end
def start_of_word(phrase, letters)
    phrase[0...letters]
end
def first_word(phrase)
    array = phrase.split
    array[0]
end
def titleize(phrase)
    # words we don't want capitalized goes here
    little_words = ["and", "the", "over"]
    output = phrase.split
    # always capitalize first word
    output[0] = output[0].capitalize
    output.each do |word|
        if (little_words.include?(word))
        else
            #bang method modifies object that it is called on
            word.capitalize!
        end
    end
    output.join(" ")
end