class PubsController < ApplicationController
  def index
    pub = Pub.first
    render json: pub.address.as_json
  end

  def coord_index
    pub = Pub.first
    pub_address = pub.address
    results = Geocoder.search("Stockton, California, 95204")
    # coords << results.long
    # coords << results.lat
    results_data = results[0]
    # results_data = results_data[:data]
    render json: results_data.as_json
  end

  def search
  end
end
