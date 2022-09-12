class PubsController < ApplicationController
  def index
    pub = Pub.first
    render json: pub.address.as_json
  end

  def coord_index
    pub = Pub.first
    pub_address = pub.address
    results = Geocoder.search(params[:address])
    coordinates = results.first.coordinates

    distance = Geocoder::Calculations.distance_between(coordinates, [40.748433, -73.985655])
    # coordinates.distance_to("Stockton, California, 95204")

    render json: distance.as_json
  end

  def search
    input_address = "1060 w addison st, chicago, IL, 60613"
    results = Geocoder.search(input_address)
    render json: results.as_json
  end
end
