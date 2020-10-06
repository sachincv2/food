class RecipieController < ApplicationController
  before_action :authenticate_user!
  def show
    @recipie = Recipie.find(params[:id])
    @steps = @recipie.steps
    # [PR]: Please move these splitting operations to Model file as discussed
    @recipie_skills = @recipie.recipie_ingredients.split(',')
    @recipie_equipments =@recipie.recipie_equipments.split(',')
  end
end