require_relative('riddle')

class Sphinx
  def initialize (riddle1, riddle2, riddle3)
    @riddles = [riddle1, riddle2, riddle3]
    @riddle_count = 0
  end

  def ask_question
    @riddles[@riddle_count].question
  end

  def check_answer(answer)
    result = @riddles[@riddle_count].guess?(answer)
    if result & (@riddle_count == 2)
      return "Welcome! The ancient treasure of Thebes is yours!"
    elsif not result
      return "You've been strangled by a sphinx!"
    else
      @riddle_count += 1
      return "Correct! Next question... "
    end
  end
end
