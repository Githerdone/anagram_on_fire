class Word < ActiveRecord::Base
  def self.anagrams_for(input)
    anagram_array = []  
    input = input.downcase.chars.sort.join
    Word.where('sorted = ?', input)
  end
end
