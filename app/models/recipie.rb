class Recipie < ApplicationRecord
    has_many :steps
    has_one_attached :recipie_image_path
    has_one_attached :recipie_video_url
    has_many :category_recipies
    has_many :categories, through: :category_recipies
    has_many :likes
    def ingredients
        self.recipie_ingredients.split(',')
    end
    def equipments
        self.recipie_equipments.split(',')
    end
end
