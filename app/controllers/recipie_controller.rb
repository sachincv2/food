class RecipieController < ApplicationController
  before_action :authenticate_user!
  def show
    @recipie = Recipie.find(params[:id])
    @steps = Step.where(recipie_id: @recipie.id)
  end
end