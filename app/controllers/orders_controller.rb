class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      render :show
    end
  end

  private

  def order_params
    params.require(:order).permit(
      :customer_name,
      :email,
      :status,
      :cvv,
      :zip,
      :exp_date,
      )
  end
end