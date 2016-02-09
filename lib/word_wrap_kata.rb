

class WordWrapKata

  def wrap(string, max_length)

    if string.length < max_length
      return string
    else
      return string[0, max_length] + "\n" + wrap(string[max_length..-1], max_length).rstrip
    end
  end
end
