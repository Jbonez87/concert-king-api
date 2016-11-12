class Services::Ticketmaster::ShowsController < ApplicationController
  def show
    base_url = "https://app.ticketmaster.com/discovery/v2/events.json?size=10&classificationName=music&postalCode=#{params[:id]}&apikey=#{ENV['TM_API_KEY']}"
    @shows = HTTParty.get(base_url).body
    render json: @shows
  end
end
