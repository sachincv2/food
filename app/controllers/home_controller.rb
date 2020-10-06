class HomeController < ApplicationController
    def index
        @categories = Category.all
        @recommended_categories = Category.first(3)
       
    end
    def dashboard
        @currentUser = current_user.email
    end
end
