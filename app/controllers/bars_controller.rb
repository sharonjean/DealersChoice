class BarsController < ApplicationController

  def search
    parameters = {
      term: 'bar',
      location: params[:location],
      cll: '37.7749' '-122.4194',
      limit: 15
    }

    yelp_par = Yelp.client.search('San Francisco')
    return yelp_par

  end

  def index
    # recieve json of longitude latitude
    # api for local bars
    # @bars = Bar.where(name: local_bar_name)
    render json: search
  end

  def show
    @bar = Bar.find(params[:id])
    render json: @bar
  end

end
