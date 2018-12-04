require 'anagram_checker'

describe 'word_splitter' do
  it 'should split the word into an array of characters' do
    expect(word_splitter('hel')).to eq([%w[h e l], %w[h l e], %w[e h l],
                                        %w[e l h], %w[l h e], %w[l e h]])
  end
end
