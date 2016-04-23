class BarsController < ApplicationController

  def search
    parameters = { 
      term: 'cocktail bars',
      offset: 15,
      sort: 2,
    }

    yelp_params = Yelp.client.search('San Francisco', parameters)

    bars = []
      yelp_params.businesses.each do |bar|
        bars << bar.name
      end
    return bars.join(" ")
  end

  def index
    search
    render json: search
  end

end
