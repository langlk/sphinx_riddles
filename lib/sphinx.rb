require('riddle')

class Sphinx
  def initialize (riddle1, riddle2, riddle3)
    @riddles = [riddle1, riddle2, riddle3]
    @riddle_count = 0
  end

  def ask_question
    @riddles[@riddle_count].question
  end

  def check_answer(answer)
  end
end
