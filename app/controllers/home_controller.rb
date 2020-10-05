class HomeController < ApplicationController
    def index
        @categories = Category.all
        @twocategories = Category.first(3)
       
    end
    def dashboard
        @currentUser = current_user.email
    end
end
