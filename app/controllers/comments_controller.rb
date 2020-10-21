class CommentsController < ApplicationController
    
    def create
        @step = Step.find(params[:step_id])
        @comment = @step.comments.create(comment_text: params[:comment_text],user_id: params[:user_id])
    end
end
