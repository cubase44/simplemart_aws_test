class CartsController < ApplicationController
  def index
  if view_context.logged_in?
    @user = view_context.current_user
    @carts = Cart.where(user_id: @user.id)
    @current_carts = view_context.current_carts(@carts)
  else
    redirect_to login_path
  end
  end

  def create
    @cart = Cart.new(carts_params)
    if @cart.save
      redirect_to carts_path
    else
      flash.now[:danger] = 'カートに追加できませんでした'
      redirect_to items_path
    end
  end

  private
  def carts_params
    params.require(:cart).permit(:user_id, :item_id, :quantity)
  end
end
