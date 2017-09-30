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

def find_pet_by_name(pet_shop, target_pet_name)
  for pet in pet_shop[:pets]
      if pet[:name] == target_pet_name
          return pet
      end
  end
  # if nothing is found, return nil
  return nil
end


def remove_pet_by_name(pet_shop, target_pet_name)
  for pet in pet_shop[:pets]
      if pet[:name] == target_pet_name
        pet_shop[:pets].delete(pet)
      end
  end
  return pet
end


def add_pet_to_stock(pet_shop, new_pet)
  #add new_pet hash to existing pet_shop hash
  #return the number pet symbols in the pet_shop[:pets] array
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets].length()
end


def customer_pet_count(customers)
  return customers[:pets].length()

end


def add_pet_to_customer(customer, new_pet)
customer[:pets].push(new_pet)
return customer[:pets]

end


def customer_can_afford_pet(customer, new_pet)
  return true if customer[:cash] >= new_pet[:price]
  else
    return false
end

def pet_exists(pet_shop, target_pet_name)
  if find_pet_by_name(pet_shop, target_pet_name) == nil
    return false
  else
    return true
  end
end


def sell_pet_to_customer(pet_shop, pet, customer)
  # If the pet can be found by name
  # If the customer can afford the pet
  if pet != nil && customer_can_afford_pet(customer, pet) == true
      add_pet_to_customer(customer, pet)
      #  increase pets sold by 1
      increase_pets_sold(pet_shop, 1)
      #  increase shops total_cash by pet price
      add_or_remove_cash(pet_shop, pet[:price])
    else
      return 0
  end
end
