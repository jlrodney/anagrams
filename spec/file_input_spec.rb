require 'anagram_checker'

describe 'file input' do
  it 'should get the file from the user and convert it into an array of words' do
    expect(file_input('word_list_test.txt')).to eq([["the"], ["of"], ["and"],
                                                    ["to"], ["a"], ["in"], ["for"]])
  end

end
