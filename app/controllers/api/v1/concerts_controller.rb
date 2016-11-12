class Api::V1::ConcertsController < ApplicationController
  before_action :set_concert, only: [:show, :update, :destroy]

  def index
    @concerts = Concert.all
    render json: @concerts
  end

  def show
    render json: @concert
  end

  def create
    @concert = Concert.new(concert_params)

    if @concert.save
      render json: @concert, status: :created
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  def update
    if @concert.update(concert_params)
      render json: @concert
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @concert.destroy
  end

  private

  def set_concert
    @concert ||= Concert.find(params[:id])
  end

  def concert_params
    params.require(:concert)
      .permit(
        :musician, :source_id, :venue, :date, :city, :price
      )
  end
end

# class Ticketmaster::Concerts
#   ZIP_CODE = ""
#
#   BASE_URL = "https://app.ticketmaster.com/discovery/v2/events.json?size=10&classificationName=music&postalCode=#{ZIP_CODE}&apikey=#{ENV['TM_API_KEY']}".freeze
#
#   def self.fetch
#     puts BASE_URL
#     @concerts = HTTParty.get(BASE_URL).body
#   end
# end
