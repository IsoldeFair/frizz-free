Ingredient.destroy_all
Quiz.destroy_all
ingredients = Ingredient.create!([
    { name: 'Panthenol', ing_type: 'humectants' },
    { name: 'Glycerin', ing_type: 'humectants' },
    { name: 'Hydrolyzed keratin', ing_type: 'proteins' },
    { name: 'Hydrolyzed wheat protein', ing_type: 'proteins' },
    { name: 'Argan oil', ing_type: 'emollients' },
    { name: 'Mango butter', ing_type: 'emollients' }
])
