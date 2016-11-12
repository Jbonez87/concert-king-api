# class Ticketmaster::Shows
#   zip_code = ""
#
#   base_url = "https://app.ticketmaster.com/discovery/v2/events.json?size=10&classificationName=music&postalCode=#{zip_code}&apikey=#{ENV['TM_API_KEY']}".freeze
#
#   def self.fetch
#     puts base_url
#     @shows = HTTParty.get(base_url).body
#   end
# end

class Ticketmaster::Shows < ApiService
  private

  zip_code = ""

  BASE_URL = "https://app.ticketmaster.com/discovery/v2/events.json?size=10&classificationName=music&postalCode=#{zip_code}&apikey=#{ENV['TM_API_KEY']}".freeze

  def fetch
    @shows = HTTParty.get(BASE_URL).body
  end

  def request_url
    BASE_URL + keys.merge(api_key: ENV["TM_API_KEY"]).to_query
  end
end
