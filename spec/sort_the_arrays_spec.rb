require 'anagram_checker'

describe 'sort_the_arrays' do
  it 'should sort each word in the array in alphabetical order' do
    expect(sort_the_arrays([["hello"], ["world"], ["amazing"]])).to eq(["ehllo", "dlorw", "aagimnz"])
  end
end
