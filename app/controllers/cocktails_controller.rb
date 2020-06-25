class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save
        if @cocktail.save
          redirect_to cocktails_path(@cocktail)
        else
          render :new
        end
  end

  def edit

  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name, :description)
  end



end
