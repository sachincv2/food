class CategoryRecipie < ApplicationRecord
    belongs_to :category
    belongs_to :recipie
end
