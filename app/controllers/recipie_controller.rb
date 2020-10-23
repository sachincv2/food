class RecipieController < ApplicationController
  before_action :authenticate_user!
  def show
    @recipie = Recipie.find(params[:id])  
    @steps = @recipie.steps
    @comments = []
    @steps.each do |step|
      @comments << step.comments.order("created_at")
    end 
    @step_with_its_comments = Hash[]
    @steps.each do |step|
      @step_with_its_comments.store(step,step.comments.order("created_at"))
    end
    @commented_users = []
    @comments.each do |comment|
      comment.each do |com|
        @commented_users << com.user
      end
    end
    @likescount = @recipie.likes.count
    @recipie_ingredients = @recipie.ingredients
    @recipie_equipments =@recipie.equipments
    @recipe_details= Hash[
      "id"=>@recipie.id,
      "recipie_name"=>@recipie.recipie_name,
      "recipie_time"=>@recipie.recipie_time,
      "likescount"=>@likescount,
      "recipie_likes"=>@recipie.recipie_likes,
      "recipie_description"=>@recipie.recipie_description,
      "recipie_ingredients"=>@recipie_ingredients,
      "recipie_equipments"=>@recipie_equipments,
      "recipie_difficulty"=>@recipie.recipie_difficulty,
      "recipie_skills"=>@recipie.recipie_skills,
      "steps"=>@steps,
      "comments"=>@comments,
      "commented_users"=>@commented_users]
  end
end
