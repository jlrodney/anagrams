require 'anagram_checker'

describe 'word_splitter' do
  it 'should split the word into an array of characters' do
    expect(word_splitter('hello')).to eq(%w[h e l l o])
  end
end
