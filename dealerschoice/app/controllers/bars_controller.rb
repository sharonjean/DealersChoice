class BarsController < ApplicationController
  def index
    render json: Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
    render json: @bar
  end
end
