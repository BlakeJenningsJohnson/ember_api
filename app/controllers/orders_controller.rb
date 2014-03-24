class OrdersController < ApplicationController
  before_action :find_order, except: [:create, :index]

  def index
    @orders = Order.all
  end

  def show
  end

  def update  
    @order.update(OrderForm.new(params[:order]).attributes)
    @order.save
    render :index
  end

  def delete
    @order.destroy
    render :index
  end

  def create
    @order = OrderForm.new(params[:order]).order
    if @order.save
      render :show
    end
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end