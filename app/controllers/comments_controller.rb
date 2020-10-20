class CommentsController < ApplicationController
    
    def create
        @step = Step.find(params[:step_id])
        @comment = @step.comments.create(comment_num: params[:comment_num],comment_text: params[:comment_text],step_id: params[:step_id],user_id: params[:user_id])
        @comment.save
    end
end
