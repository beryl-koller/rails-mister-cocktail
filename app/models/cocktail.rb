class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    has_one_attached :picture

    validates :name, :picture, presence: true, uniqueness: true
end
