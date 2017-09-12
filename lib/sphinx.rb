require_relative('riddle')

class Sphinx
  attr_reader(:riddles, :riddle_count)

  def initialize (riddles)
    @riddles = riddles
    @riddle_count = 0
    @riddle_index = random_riddles
  end

  def random_riddles
    prng = Random.new
    result = []
    until result.length == 3  do
      random_index = prng.rand(6)
      if !result.include?(random_index)
        result.push(random_index)
      end
    end
    result
  end

  def ask_question
    @riddles[@riddle_index[@riddle_count]].question
  end

  def check_answer(answer)
    result = @riddles[@riddle_index[@riddle_count]].guess?(answer)
    if result & (@riddle_count == 2)
      @riddle_count = 0
      @riddle_index = random_riddles
      return "Welcome! The ancient treasure of Thebes is yours!"
    elsif not result
      @riddle_count = 0
      @riddle_index = random_riddles
      return "You've been strangled by a sphinx!"
    else
      @riddle_count += 1
      return "Correct! Next question... "
    end
  end
end
