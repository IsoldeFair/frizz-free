FactoryBot.define do
  factory :ingredient do
    name { 'Very Complicated Ing Name' }
    ing_type { 'emollients' }
  end

  factory :incorrect_ingredient, class: Ingredient do
    name { 'Very Complicated Ing Name' }
    ing_type { 'a different ing type' }
  end
end
