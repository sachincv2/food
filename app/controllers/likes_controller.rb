class LikesController < ApplicationController
    def create
        if already_liked?
            flash[:notice] = " YOu can't like more than once"
        else
            @recipielike = Recipie.find(params[:recipie_id])
            @recipielike.likes.create(user_id: params[:user_id])
        end
      end

      def already_liked?
        Like.where(user_id: params[:user_id],recipie_id: params[:recipie_id]).exists?
      end
end
