class RecipieController < ApplicationController
  before_action :authenticate_user!
  def index
    @recipie = Recipie.find_by recipie_name: 'Lemon Tea'
    @steps = Step.where(recipie_id: @recipie.id)
  end
end
