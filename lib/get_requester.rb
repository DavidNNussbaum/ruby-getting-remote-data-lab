# require 'net/http'
# require 'open-uri'
# require 'json'


# class GetRequestor
#     # URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"

#     def initialize(url)
#         @url = url
#     end
    
#     def get_response_body
#          uri = URI.parse(@url)
#          response = Net::HTTP.get_response(uri)
#          response.body
#     end

#     def parse_json
#         JSON.parse(get_response_body)
#         # programs.collect do |data|
#         # data["info"] 
#     # end 
#     end
# end

require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end



  