class RecipieController < ApplicationController
  before_action :authenticate_user!
  def show
    @recipie = Recipie.find(params[:id])  
    @steps = @recipie.steps
    @comments = Comment.all
    @currentuser = current_user
    @users = User.all
    @recipie_ingredients = @recipie.ingredients
    @recipie_equipments =@recipie.equipments
    @H = Hash["recipie_name"=>@recipie.recipie_name,"recipie_time"=>@recipie.recipie_time,"recipie_likes"=>@recipie.recipie_likes,"recipie_description"=>@recipie.recipie_description,"recipie_ingredients"=>@recipie_ingredients,"recipie_equipments"=>@recipie_equipments,"recipie_difficulty"=>@recipie.recipie_difficulty,"recipie_skills"=>@recipie.recipie_skills]
  end
end
