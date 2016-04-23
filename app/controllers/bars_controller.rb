class BarsController < ApplicationController
  def index
    # recieve json of longitude latitude
    # api for local bars
    # @bars = Bar.where(name: local_bar_name)
    render json: Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
    render json: @bar
  end
end
