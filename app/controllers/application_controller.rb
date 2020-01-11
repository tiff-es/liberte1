class ApplicationController < ActionController::Base
  def current_customer
    Customer.find_by(id: session[:customer_id])
  end

  def logged_in?
    !current_customer.nil?
  end
end
