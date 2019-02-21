class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail_id, :ingredient_id,
            :ingredient, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
