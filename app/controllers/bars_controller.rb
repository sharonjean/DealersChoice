class BarsController < ApplicationController

  def search
    parameters = { 
      term: 'cocktail bars',
      offset: 15,
      sort: 2,
    }

    yelp_params = Yelp.client.search('San Francisco', parameters)
  end

  def index
    search
    render json: search
  end

end
