require 'anagram_checker'

describe 'word input' do
  it 'should split the word into an array of characters' do
    expect(word_input('hel')).to eq(["hel", "hle", "ehl", "elh", "lhe", "leh"])
  end
end
