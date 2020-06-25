class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :destroy, :update]

  def index
    @cocktails = Cocktail.all

  end

  def show
    @doses = Dose.where(cocktail_id: @cocktail)
    @ingredients = []
    @doses.each do |dose|
      @cocktail = Cocktail.find(dose.cocktail_id)
      @ingredients << Ingredient.find(dose.ingredient_id)
    end
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

  def update
    @cocktail.update(cocktails_params)

    redirect_to cocktail_path
  end


  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end


  def cocktails_params
    params.require(:cocktail).permit(:name, :description)
  end



end
