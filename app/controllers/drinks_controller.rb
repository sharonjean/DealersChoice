class DrinksController < ApplicationController

  def choose
    # Need to recieve params[:choice_id](drink selected id).
    p '___________------------------------------------------'
    if session[:drink_ids] == nil
      session[:drink_ids] = params[:id]
    end

    if params[:choice_id]
      # If drink is chosen, return json of the drink
      @drink = Drink.find(params[:choice_id])
      params[:choice_id].clear
      render json: @drink
    elsif session[:drink_ids].length > 0
      # if drink is not chosen, return next drink
      @drink_id = session[:drink_ids].shuffle!.pop
      @drink = Drink.find(@drink_id)
      render json: @drink
    else
      # Need something for edge case of they don't like any drinks
      redirect_to 'bars#index'
    end
  end

  def show

  end
end
