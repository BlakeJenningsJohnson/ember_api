class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # before_action :set_cart

  # private

  # def set_cart
  #   @cart = Cart.find(params[:id]) || Cart.new
  # end
end
