require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |each_item|
    if each_item[:item] == name
      return each_item
    end
  end 
  return nil 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  consolidated = []
  cart.each do |each_item|
    if find_item_by_name_in_collection(each_item[:item], consolidated)
      each_item[:count] += 1 
    else
      each_item[:count] = 1
      consolidated.push(each_item)
    end 
  end 
  consolidated
end


  