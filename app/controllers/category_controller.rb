class CategoryController < ApplicationController
    def show
        # [PR]: Add a TODO comment here saying why you are querying `recipies` this way, instead of using `has_many :through` helpers.
        # This way you can remember this issue and address it later.
        #[TODO]: As we could not resolve the issue of Category.recipies I have  used this method 
        @category = Category.find(params[:id])
        @categoryrecipie = CategoryRecipie.where(category_id:@category.id)
        @recipies = Recipie.where(id:@categoryrecipie.ids)
    end
end
