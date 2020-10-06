class CategoryController < ApplicationController
    def show
        #[TODO]: As we could not resolve the issue of Category.recipies I have  used this method 
        @category = Category.find(params[:id])
        @categoryrecipie = CategoryRecipie.where(category_id:@category.id)
        @recipies = Recipie.where(id:@categoryrecipie.ids)
    end
end
