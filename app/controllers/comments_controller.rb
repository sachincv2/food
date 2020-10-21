class CommentsController < ApplicationController
    
    def create
        @step = Step.find(params[:step_id])
        @comment = @step.comments.create(comment_num: params[:comment_num],comment_text: params[:comment_text],user_id: params[:user_id])
    end
end
