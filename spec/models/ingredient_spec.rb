require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it 'is valid with valid attributes' do
    ingredient = build :ingredient
    expect(ingredient).to be_valid
  end

  it 'is not valid without a name' do
    ingredient = Ingredient.new(ing_type: 'emollients')
    expect(ingredient).to_not be_valid
  end

  it 'is not valid without an ing_type' do
    ingredient = Ingredient.new(name: 'A simple emollient')
    expect(ingredient).to_not be_valid
  end

  it 'is not valid due to an incorrect ing_type' do
    ingredient = build :incorrect_ingredient
    expect(ingredient).to_not be_valid
  end
end
