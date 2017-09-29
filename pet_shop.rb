def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, cash)
  current_cash = pet_shop[:admin][:total_cash] += cash
    return current_cash
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, pets_sold)
  current_pets_sold = pet_shop[:admin][:pets_sold] += pets_sold
end


def stock_count(pet_shop)
 current_stock = pet_shop[:pets]
 return current_stock.count()
end


def pets_by_breed(pet_shop, breed)
  breed_matches = []
  for pet in pet_shop[:pets]
      if pet[:breed] == breed
        breed_matches.push(pet)
       end
  end
  return breed_matches
end
