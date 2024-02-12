module CartsHelper

  def current_carts(carts)
    cart_items = []
    carts.each do |cart|
    cart_items.push Item.joins(:cart).where(id: cart.item_id)
    end
    return cart_items
  end

# def current_cart_items
  # @cart_items.each do |cart_item|
  # cart_item.each do |item|
  # end
  # end
# end

end
