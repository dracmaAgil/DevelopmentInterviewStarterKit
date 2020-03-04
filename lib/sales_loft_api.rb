require 'httparty'

class SalesLoftApi
  include HTTParty
  base_uri 'https://api.salesloft.com/v2/people.json'
   
  format :json

  def initilize ()
  end

  def self.get_people()
    response = get('', headers: { Authorization: "Bearer #{ ENV["SALE_LOFT_API_KEY"] }" } )
    if response.success?
      JSON.parse(response.body)['data']
    else
      raise response.response
    end
  end
end
