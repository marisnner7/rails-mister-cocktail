class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new , :create, :destroy]



  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
