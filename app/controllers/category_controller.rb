class CategoryController < ApplicationController
    def show
        # [PR]: Add a TODO comment here saying why you are querying `recipies` this way, instead of using `has_many :through` helpers.
        # This way you can remember this issue and address it later.
        @category = Category.find(params[:id])
        # [PR]: This below variable name is not understandable. Try to use more understandable names.
        @category1 = CategoryRecipie.where(category_id:@category.id)
        @recipies = Recipie.where(id:@category1.ids)
    end
end
