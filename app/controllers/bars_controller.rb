class BarsController < ApplicationController

  def display_bar
    parameters = { 
      term: 'cocktail bars',
      offset: 15,
      sort: 2,
    }

    yelp_params = Yelp.client.search('San Francisco', parameters)
  end

  def index
    display_bar
    render json: display_bar
  end

end
