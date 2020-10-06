class RecipieController < ApplicationController
  before_action :authenticate_user!
  def show
    @recipie = Recipie.find(params[:id])
    @steps = @recipie.steps
    @recipie_ingredients = @recipie.ingredients
    @recipie_equipments =@recipie.equipments
  end
end