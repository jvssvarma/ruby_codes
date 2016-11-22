class WordDictionary
  #does't work

    # Adds a word into the data structure.
    @@list = []
    def add_word(word)
        word.to_s << @@list
    end


    # Returns if the word is in the data structure. A word could
    # contain the dot character '.' to represent any one letter.
    count = 0
    def search(word)
        word  = word.delete(".")
        @@list.each do |w|
            if w.include? word
                count+=1
            end
        end
        if count == 0
            return false
        else
            return true
        end
    end
end

# Your WordDictionary object will be instantiated and called as such:
word_dictionary = WordDictionary.new
word_dictionary.add_word("bad")
word_dictionary.search("b..")
