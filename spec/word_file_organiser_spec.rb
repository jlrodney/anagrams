require 'word_file_organiser'

describe 'file input' do

  it 'should print a message' do
    allow_any_instance_of(Object).to receive(:gets).and_return('listen')
    list = WordFileOrganiser.new
    expect{ list.main }.to output("Please enter the word list file path\n").to_stdout
  end
end

describe 'main methods' do

  it 'should sort each word in the array in alphabetical order' do
    list = WordFileOrganiser.new
    expect(list.sort_the_arrays(%w[hello world amazing])).to eq(
      %w[ehllo dlorw aagimnz]
    )
  end

  it 'should take a txt file and convert it into an array of sorted words' do
    list = WordFileOrganiser.new
    expect(list.word_file_into_array('word_list_test.txt')).to eq(
      %w[eht ehllo eilnst fo adn ot a in for]
    )
  end

  it 'should sort a string' do
    list = WordFileOrganiser.new
    expect(list.word_sorter('lkajsdfnhhd')).to eq('addfhhjklns')
  end

  it 'should throw an error "Please enter a string next time' do
    list = WordFileOrganiser.new
    expect { list.file_input(Object.new)}. to raise_error\
      'Please enter a string next time'
  end

  it 'should throw an error "Please enter something next time' do
    list = WordFileOrganiser.new
    expect { list.file_input('')}. to raise_error\
      'Please enter something next time'
  end

  it 'should get the file from user and convert it into an array of words' do
    list = WordFileOrganiser.new
    expect(list.file_input('word_list_test.txt')).to eq(
      %w[eht ehllo eilnst fo adn ot a in for]
    )
  end

end
