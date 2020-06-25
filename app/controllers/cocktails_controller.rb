class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :destroy, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show

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

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end


  def cocktails_params
    params.require(:cocktail).permit(:name, :description)
  end



end
