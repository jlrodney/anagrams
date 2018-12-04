require 'anagram_checker'

describe 'word_sorter' do
  it 'should sort a string into alphabetical order' do
    expect(word_sorter("lkajsdfnhhd")).to eq("addfhhjklns")
  end
end
