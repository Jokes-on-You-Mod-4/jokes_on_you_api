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
    
    def get_jokes(num)
      get_url("/v1/dadjokes?limit=#{num}")
    end

  end
end