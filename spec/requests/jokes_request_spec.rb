
RSpec.describe 'jokes Request 'do
  describe 'endpoint' do
    it 'hits the endpoint' do 
      get "/api/v1/jokes?category=correct"
      expect(response).to be_successful
    end
    
    it 'returns serialized json for correct' do 
      get "/api/v1/jokes?category=correct"
      jokes = JSON.parse(response.body, symbolize_names: true)

      expect(jokes).to be_a Hash
      check_hash_structure(jokes, :data, Hash)
      expect(jokes[:data][:id]).to eq(nil.to_json)
      check_hash_structure(jokes[:data], :type, String)
      check_hash_structure(jokes[:data], :attributes, Hash)
      
      attributes = jokes[:data][:attributes]
      check_hash_structure(attributes, :image, String)
      check_hash_structure(attributes, :character, String)
      check_hash_structure(attributes, :name, String)
      expect(attributes[:image]).to eq('https://api-ninjas-data.s3.us-west-2.amazonaws.com/jokess/U%2B1F389.png')
      expect(attributes[:character]).to eq('🎉')
      expect(attributes[:name]).to eq('party popper')
    end
    
    it 'returns serialized json for incorrect' do 
      get "/api/v1/jokes?category=incorrect"
      jokes = JSON.parse(response.body, symbolize_names: true)
      
      expect(jokes).to be_a Hash
      check_hash_structure(jokes, :data, Hash)
      expect(jokes[:data][:id]).to eq(nil.to_json)
      check_hash_structure(jokes[:data], :type, String)
      check_hash_structure(jokes[:data], :attributes, Hash)
      
      attributes = jokes[:data][:attributes]
      check_hash_structure(attributes, :image, String)
      check_hash_structure(attributes, :character, String)
      check_hash_structure(attributes, :name, String)
      expect(attributes[:image]).to eq('https://api-ninjas-data.s3.us-west-2.amazonaws.com/jokess/U%2B1F4A9.png')
      expect(attributes[:character]).to eq('💩')
      expect(attributes[:name]).to eq('pile of poo')
    end
  end
end