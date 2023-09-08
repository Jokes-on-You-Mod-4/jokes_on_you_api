class Trivia
  attr_reader :id,
              :trivia_category,
              :trivia_question,
              :trivia_answer

  def initialize(data)
    @id = nil
    @trivia_category = data[:category]
    @trivia_question = data[:question]
    @trivia_answer = data[:answer]
  end
end