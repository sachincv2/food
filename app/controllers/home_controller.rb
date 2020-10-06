class HomeController < ApplicationController
    def index
        @categories = Category.all
        # [PR]: Rename this to something more understandable. ex: recommended_categories
        @twocategories = Category.first(3)
       
    end
    def dashboard
        @currentUser = current_user.email
    end
end
