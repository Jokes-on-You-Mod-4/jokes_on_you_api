class NinjaService 
  class << self
    def conn
      Faraday.new("https://api.api-ninjas.com") do |f|
        f.headers['X-Api-Key'] = ENV["API_NINJA_KEY"]
      end
    end

    def get_url(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_trivia(category)
      get_url("/v1/trivia?category=#{category}&limit=10")
    end
    
    def get_emoji(category)
      if category == 'incorrect'
        get_url("/v1/emoji?name=pile of poo")
      elsif category == 'correct'
        get_url("/v1/emoji?name=party popper")
      end
    end
  end
end