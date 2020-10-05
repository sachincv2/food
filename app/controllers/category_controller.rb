class CategoryController < ApplicationController
    def show
        @category = Category.find(params[:id])
        @category1 = CategoryRecipie.where(category_id:@category.id)
        @recipies = Recipie.where(id:@category1.ids)
    end
end
