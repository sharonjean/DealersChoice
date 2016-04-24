class TagsController < ApplicationController

  def index
    # tag choosing logic
    @selected_tag = Tag.find(params[:id])
    if session[:tags] == nil
      session[:tags] = []
      p "CREATING A NEW SESSION AREA FOR TAGS"
    end
    session[:tags] << @selected_tag.id
    @next_tags = @selected_tag.children
    p "THE SELECTED TAG THIS TIME WAS #{@selected_tag}"
    # Drink choosing logic
    @drink_ids = []
    if @next_tags.length === 0
      @drink_choices = []
      @bars_drinks = Drink.all
      @bars_drinks.each do |drink|
        @drink_tags_array = drink.tags.pluck(:id)
        @in_common = @drink_tags_array & session[:tags]
        p "THIS IS IN COMMON #{@in_common}"
        p "THIS IS IN the actual tags #{@drink_tags_array}"

        if @in_common.length >= session[:tags].length - 1
          @drink_ids << drink.id
        end

      end
      p "LENGTH OF IN COMMON TAGS #{@in_common.length}"
      p "LENGTH OF SESSION TAGS #{session[:tags].length}"
      p "LIST OF SESSION TAGS#{session[:tags]}"
      p "ABOVE SHOULD BE ALL THE STUFF"

      session[:tags].clear

      redirect_to :action => "choose", :controller => "drinks", :id => @drink_ids
    else
      render json: @next_tags
    end
  end

end
