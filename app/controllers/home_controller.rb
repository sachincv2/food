class HomeController < ApplicationController
    def index
        @categories = Category.all
       
    end
    def dashboard
        @currentUser = current_user.email
    end
end
