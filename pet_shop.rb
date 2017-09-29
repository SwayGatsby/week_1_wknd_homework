def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def  add_or_remove_cash(pet_shop, cash)
  current_cash = pet_shop[:admin][:total_cash] += cash
    return current_cash
end

# def test_add_or_remove_cash__add
#   add_or_remove_cash(@pet_shop,10)
#   cash = total_cash(@pet_shop)
#   assert_equal(1010, cash)
# end

# def add_or_remove_cash(pet_shop, cash)
#   total_cash = pet_shop[:admin][:total_cash] += cash
#   return total_cash
# end
