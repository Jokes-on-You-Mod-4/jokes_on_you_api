class TriviaFacade
  def initialize(category)
    @category = category
  end

  def trivia_index
    trivia_data =  NinjaService.get_trivia(@category)
    @trivia_questions = trivia_data.map { |trivia| Trivia.new(trivia) }
  end
end