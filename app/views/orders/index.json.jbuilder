json.order @orders do |order|
  json.extract! order, :id, :email, :status, :cvv, :zip
  json.customerName order.customer_name
  json.expDate order.exp_date
end

