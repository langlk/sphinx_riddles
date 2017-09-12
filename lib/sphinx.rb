require_relative('riddle')

class Sphinx
  def initialize (riddles)
    @riddles = riddles
    @riddle_count = 0
  end

  def ask_question
    @riddles[@riddle_count].question
  end

  def check_answer(answer)
    result = @riddles[@riddle_count].guess?(answer)
    if result & (@riddle_count == 2)
      @riddle_count = 0
      return "Welcome! The ancient treasure of Thebes is yours!"
    elsif not result
      @riddle_count = 0
      return "You've been strangled by a sphinx!"
    else
      @riddle_count += 1
      return "Correct! Next question... "
    end
  end
end
