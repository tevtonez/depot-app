class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index    
    @products = Product.order(:title)
    
    @count = hitcounter()
    
  end
  
  def hitcounter()
    session[:counter] ||= 1
    session[:counter] += 1
  end

  
  
end
