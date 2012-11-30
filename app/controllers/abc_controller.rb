class AbcController < ApplicationController
  def index
    @orders = Order.all
    render :xml => @orders
  end
end