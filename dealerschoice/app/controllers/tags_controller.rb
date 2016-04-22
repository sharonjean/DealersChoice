class TagsController < ApplicationController

  def index

    @selected_tag = Tag.find(params[:id])
    if session[:tags] == nil
      session[:tags] = []
    end
    session[:tags] << @selected_tag
    @next_tags = @selected_tag.children

    if @next_tags.length === 0
      # return chosen drink
      @drink_choices = nil
    end

    render json: @next_tags

  end

end
