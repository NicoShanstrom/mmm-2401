require 'rails_helper'

RSpec.describe 'FoodDataApi' do
  describe '.connection' do
    it 'Connects to the FoodDataApi' do
      connection = FoodDataApi.connection
      expect(connection).to be_a(Faraday::Connection)
      expect(connection.headers).to eq({"X-API-Key"=>"N71KyfZoXNj9iE8F9DLuwgsemjT43w64lF1V0pXL", "User-Agent"=>"Faraday v1.10.3"})
      expect((connection.url_prefix).to_s).to eq("https://api.nal.usda.gov/")
    end

    it 'can perform a get request with the correct parameters' do
      
      response = FoodDataApi.get('/fdc/v1/foods/search', query: 'sweet potato', pageSize: 10)
      # require 'pry'; binding.pry
      expect(response['foods']).to be_an(Array)
      expect(response['foods'].size).to eq(10)
      expect(response['foods'][0]['fdcId']).to eq(477475)
      expect(response['foodSearchCriteria']['query']).to eq("sweet potato")
    end
  end
end