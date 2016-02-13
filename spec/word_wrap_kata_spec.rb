require "word_wrap_kata"

describe WordWrapKata do

  before do
    @word_wrap_kata = WordWrapKata.new
  end

  it "empty string returns empty string" do
    max_length = 1
    string = ""
    expect(@word_wrap_kata.wrap(string, max_length)).to eq string
  end

  it "does not alter a string of less than max length" do
    max_length = 10
    string = "hello"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq string
  end

  it "wraps two words with space" do
    max_length = 6
    string = "word word"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "word\nword"
  end

  it "wraps three words after second space" do
    max_length = 11
    string = "word word word"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "word word\nword"
  end

  it "splits single word many times" do
    max_length = 3
    string = "abcdefghij"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "abc\ndef\nghi\nj"
  end

  it "breaks a string into two parts" do
    max_length = 3
    string = "hello"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "hel\nlo"
  end

  it "breaks a string into three parts" do
    max_length = 2
    string = "hello"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "he\nll\no"
  end

  it "breaks a string into 2 parts" do
    max_length = 2
    string = "mary"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "ma\nry"
  end
  it "breaks a string into 3 parts" do
    max_length = 1
    string = "dog"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "d\no\ng"
  end

end
