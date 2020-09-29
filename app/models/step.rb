class Step < ApplicationRecord
    belongs_to :recipies
    has_many :comments
end
