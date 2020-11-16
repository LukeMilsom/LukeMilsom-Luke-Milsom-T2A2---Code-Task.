# responsible into looking for parameters in your path and finding which session you are on, kind of like adding a cookie

module CurrentCart
    private
    def set_cart
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end