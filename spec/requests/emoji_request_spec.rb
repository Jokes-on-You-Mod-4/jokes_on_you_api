require 'rails_helper'

RSpec.describe 'Emoji Request 'do
  describe 'endpoint' do
    it 'hits the endpoint' do 
      get "/api/v1/emoji?category=correct"
      expect(response).to be_successful
    end
    
    it 'returns serialized json for correct' do 
      get "/api/v1/emoji?category=correct"
      emoji = JSON.parse(response.body, symbolize_names: true)

      expect(emoji).to be_a Hash
      check_hash_structure(emoji, :data, Hash)
      expect(emoji[:data][:id]).to eq(nil.to_json)
      check_hash_structure(emoji[:data], :type, String)
      check_hash_structure(emoji[:data], :attributes, Hash)
      check_hash_structure(emoji[:data], :image, String)
      check_hash_structure(emoji[:data], :character, String)
      
      attributes = emoji[:data][:attributes]
      check_hash_structure(attributes, :image, String)
      check_hash_structure(attributes, :character, String)
      check_hash_structure(attributes, :name, String)
      expect(attributes[:image]).to eq('https://api-ninjas-data.s3.us-west-2.amazonaws.com/emojis/U%2B1F4A9.png')
      expect(attributes[:character]).to eq('🎉')
      expect(attributes[:character]).to eq('party popper')
    end

    it 'returns serialized json for incorrect' do 
      get "/api/v1/emoji?category=incorrect"
      emoji = JSON.parse(response.body, symbolize_names: true)

      expect(emoji).to be_a Hash
      check_hash_structure(emoji, :data, Hash)
      expect(emoji[:data][:id]).to eq(nil.to_json)
      check_hash_structure(emoji[:data], :type, String)
      check_hash_structure(emoji[:data], :attributes, Hash)
      check_hash_structure(emoji[:data], :image, String)
      check_hash_structure(emoji[:data], :character, String)
      
      attributes = emoji[:data][:attributes]
      check_hash_structure(attributes, :image, String)
      check_hash_structure(attributes, :character, String)
      check_hash_structure(attributes, :name, String)
      expect(attributes[:image]).to eq('https://api-ninjas-data.s3.us-west-2.amazonaws.com/emojis/U%2B1F389.png')
      expect(attributes[:character]).to eq('💩')
      expect(attributes[:character]).to eq('pile of poo')
    end
  end
end