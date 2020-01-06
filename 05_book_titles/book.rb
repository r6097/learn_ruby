class Book
# write your code here
    attr_reader :title
    def title=(caps_title)
        little_words = ['and', 'the', 'to', 'an', 'a', 'in', 'of']
        words = caps_title.split
        words[0] = words[0].capitalize
        words.each do |word|
            if (little_words.include?(word))
            else
                #bang method modifies object that it is called on
                word.capitalize!
            end
        end
        @title = words.join(" ")
    end
end
