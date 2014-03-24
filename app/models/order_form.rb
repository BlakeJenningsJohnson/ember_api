class OrderForm

  def initialize(order_hash)
    order_hash[:cart_id] = order_hash.delete(:cart)
    order_hash[:customer_name] = order_hash.delete(:customerName)
    order_hash[:exp_date] = order_hash.delete(:expDate)
    order_hash[:credit_card_number] = order_hash.delete(:creditCardNumber)
    @order_hash = order_hash
  end

  def order
    Order.new(attributes)
  end

  def attributes
    @order_hash.permit(:customer_name, :email, :status, :cvv, :zip, :exp_date, :credit_card_number, :cart_id)
  end
end
