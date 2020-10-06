class RecipieController < ApplicationController
  before_action :authenticate_user!
  def show
    @recipie = Recipie.find(params[:id])
    @steps = @recipie.steps
    @recipie_skills = @recipie.skills
    @recipie_equipments =@recipie.equipments
  end
end