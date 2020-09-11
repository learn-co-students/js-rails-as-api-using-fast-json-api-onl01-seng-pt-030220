class SightingsController < ApplicationController
  def index
    sightings = sightings.all
    render json: SightingSerializer.new(sightings)
  end

  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
end
