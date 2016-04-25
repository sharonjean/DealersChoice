class DrinksController < ApplicationController

  def choose
    # Need to recieve params[:choice_id](drink selected id).

    if session[:drink_ids] == nil
      session[:drink_ids] = params[:id]
    end

    if params[:choice_id]
      # If drink is chosen, return json of the drink
      @drink = Drink.find(params[:choice_id])
      params[:choice_id].clear
      redirect_to bar_drink_path(id: @drink.id, bar_id: @drink.bar_id)
    elsif session[:drink_ids].length > 0
      # if drink is not chosen, return next drink
      @drink_id = session[:drink_ids].shuffle!.pop
      @drink = Drink.find(@drink_id)
      render json: @drink
    else
      # Need something for edge case if they don't like any drinks
      redirect_to root_path
    end
  end

  def index
    @bar = Bar.find(params[:bar_id])
    @bar_menu = {bar: @bar, drinks: @bar.drinks}
    render json: @bar_menu
  end

  def show
    @drink = Drink.find(params[:id])
    @drink_data = {drink: @drink, reviews: @drink.reviews}
    render json: @drink_data
  end

end
