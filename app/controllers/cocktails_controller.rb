class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show] # [:edit, :update, :destroy]
  before_action :set_cocktails, only: [:index, :show]

  # GET /cocktails
  def index

  end

  # GET /cocktails/1
  def show
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

  # GET /cocktails/1/edit
  # def edit
  # end

  # POST /cocktails
  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'cocktail was successfully created.'
    else
      render :new
    end
  end

  def edit

  end
  # PATCH/PUT /cocktails/1
  # -def update
  # -  if @cocktail.update(cocktail_params)
  # -    redirect_to @cocktail, notice: 'cocktail was successfully updated.'
  # -  else
  # -    render :edit
  # -  end
  # -end

  # DELETE /cocktails/1
  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'cocktail was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cocktails
    @cocktails = Cocktail.all
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
