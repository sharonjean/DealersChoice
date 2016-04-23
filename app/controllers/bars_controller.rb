class BarsController < ApplicationController
  
  def search
    parameters = { 
      term: 'bar', 
      limit: 15
    }
    yelp_params = Yelp.client.search('San Francisco', parameters)
    return yelp_params
  end

  def index
    search
    render json: search
  end

end
