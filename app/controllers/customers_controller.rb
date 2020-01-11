class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new

  end

  def create
    user = Customer.find_by(username: params[:username])
    if user
      session[:user_id] = user.id
      redirect_to categories_path
    else
      flash.now["notice"] = "No user found with this username."
      render 'sessions/login'
    end
    end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    if @customer.update
    redirect_to customer_path(@customer)
    else
      render :edit
      end
  end

  def destroy
    @customer = Customer.find(params[:id])

    @customer.destroy
    redirect_to items_path
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name,:last_name,:birthday,:gender,:address)
  end
end
