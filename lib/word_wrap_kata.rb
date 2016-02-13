

class WordWrapKata

  def wrap(string, max_length)
    if string.length <= max_length
      return string
    end

    if string[0...max_length].index(' ') != nil
      space_position = (max_length - 1) - string[0...max_length].reverse.index(" ")
      break_line(string, space_position, 1, max_length)
    elsif string[max_length].eql?(" ")
      break_line(string, max_length, 1, max_length)
    else
      break_line(string, max_length, 0, max_length)
    end
  end

  def break_line(string, initial_pos, adjustment, max_length)
    string[0...initial_pos] + "\n" + wrap(string[initial_pos + adjustment..-1], max_length)
  end
end
