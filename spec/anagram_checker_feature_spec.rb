require 'anagram_checker'

RSpec.describe do
  describe 'is a word an anagram of any of the words in a given list' do
    xit 'takes an argument of the word and the file' do
      expect(anagram.user_input('silent', words.txt)).to eq "listen"
    end
  end
end
