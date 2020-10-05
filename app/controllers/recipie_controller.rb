class RecipieController < ApplicationController
  before_action :authenticate_user!
  def show
    @recipie = Recipie.find(params[:id])
    # [PR]: Since `Step` is a second model to `Recipe`. You can just use `@recipe.steps` to fetch corresponding steps.
    @steps = Step.where(recipie_id: @recipie.id)
    @recipieskills = @recipie.recipie_ingredients.split(',')
    @recipieequipments =@recipie.recipie_equipments.split(',')
  end
end