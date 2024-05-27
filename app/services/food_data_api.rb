class FoodDataApi

  @base_url = "https://api.nal.usda.gov"
  @api_key = Rails.application.credentials.food_data[:key]

  def self.connection
    @connection ||= Faraday.new(url: @base_url) do |conn|
      conn.request :json
      conn.response :json, content_type: /\bjson$/ #dont have to use json.parse
      conn.headers['X-API-Key'] = @api_key
    end
  end

  def self.get(endpoint, params = {})
    response = connection.get(endpoint) do |req|
      req.params = params
    end
    response.body
    # handle_response(response)
  end
  
  # def self.handle_response(response)
  #   if response.success?
  #     response.body
  #   else
  #     { error: response.status, message: response.body }
  #   end
  # end
end