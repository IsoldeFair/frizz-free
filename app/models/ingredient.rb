class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :ing_type, inclusion: { in: ['emollients', 'humectants', 'proteins'] }, presence: true
end
