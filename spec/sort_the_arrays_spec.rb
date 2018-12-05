require 'anagram_checker'

describe 'sort_the_arrays' do
  it 'should sort each word in the array in alphabetical order' do
    checker = AnagramsChecker.new
    expect(checker.sort_the_arrays(%w[hello world amazing])).to eq(
      %w[ehllo dlorw aagimnz]
    )
  end
end
