class JokesFacade
  
  def jokes_index(num)
    jokes_data =  NinjaService.get_jokes(num)
    jokes_data.map { |joke| Joke.new(joke) }
  end
end