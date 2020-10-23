class Step < ApplicationRecord
    belongs_to :recipie
    has_many :comments
end
