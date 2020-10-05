class Category < ApplicationRecord
    has_many :category_recipies, class_name: "CategoryRecipie"
    has_many :recipies, through: :category_recipies, :source => :recipie
end
