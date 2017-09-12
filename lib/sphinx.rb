require('riddle')

class Sphinx
  def initialize (riddle1, riddle2, riddle3)
    @riddles = [riddle1, riddle2, riddle3]
    @riddle_count = 0
  end

  def ask_question
    @riddles[@riddle_count].question
  end

  def check_answer?(answer)
    result = @riddles[@riddle_count].guess?(answer)
    @riddle_count += 1
    result
  end
end
