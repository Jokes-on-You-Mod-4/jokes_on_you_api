class Joke
  attr_reader :id,
              :joke

  def initialize(data)
    @id = nil
    @joke = data[:joke]
  end
end