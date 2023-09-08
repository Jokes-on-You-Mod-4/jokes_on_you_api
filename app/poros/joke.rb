class Joke
  attr_reader :id,
              :joke

  def initialize(data)
    @id = nil
    @trivia_category = data[:joke]
  end
end