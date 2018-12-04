require 'anagram_checker'

describe 'word_sorter' do
  it 'should sort a string into alphabetical order' do
    checker = AnagramsChecker.new
    expect(checker.word_sorter('lkajsdfnhhd')).to eq('addfhhjklns')
  end
end
