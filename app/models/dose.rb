class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end

# description cannot be blank (FAILED - 7)
#  belongs to a cocktail (FAILED - 8)
#  belongs to an ingredient (FAILED - 9)
#  cocktail cannot be blank (FAILED - 10)
#  ingredient cannot be blank (FAILED - 11)
#  is unique for a given cocktail/ingredient couple (FAILED - 12)

