class BarsController < ApplicationController
  
  def search
    parameters = { 
      term: 'bar', 
      location: params[:location], 
      cll: params[:latitude, :longitude], 
      limit: 15
    }
    render json: Yelp.client.search(parameters)
  end

  def index
    # recieve json of longitude latitude
    # api for local bars
    # @bars = Bar.where(name: local_bar_name)
    search
    render json: Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
    render json: @bar
  end

end
