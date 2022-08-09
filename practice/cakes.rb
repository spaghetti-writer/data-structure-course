def cake(recipe, stock)
  if (recipe.keys - stock.keys).count > 0 then return 0 end
  
  yield_by_ingredient = []
  stock.each do |key, value|
    recipe.each do |skey, svalue|
      if key == skey
        yield_by_ingredient << (value/svalue).floor
      end
    end
  end

  yield_by_ingredient.sort.first
end

# refactorizado
def cakes2(recipe, available)
  if (recipe.keys - available.keys).count > 0 then return 0 end
  
  yield_by_ingredient = []
  recipe.each do |ingredient, amount|
    yield_by_ingredient << (available[ingredient].to_f / amount.to_f).floor
  end

  yield_by_ingredient.min
end

# 3
def cakes(recipe, available)
  recipe.collect { | k, v | available[k].to_i / v }.min
end

p cake({apple: 1, sugar:2}, {apple: 3, sugar: 10})