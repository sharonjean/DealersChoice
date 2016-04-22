class TagsController < ApplicationController

  def index
    # fancy logic here for swiping
    @returned_tag = Tag.find(params[:id])
    @tags = Tag.where()

    render json: @tag
  end

end
