class TagsController < ApplicationController

  def index

    @selected_tag = Tag.find(params[:id])
    @next_tags = @tag.children

    render json: @tag

  end

end
