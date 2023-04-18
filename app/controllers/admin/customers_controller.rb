class CustomersController < ApplicationController
  def index
    @customers = Customer.page(params[:page])
  end

  def show
    @customers = Customer.find(params[:id])
    @customers_name = @customer.last.name + @customer.first_name
  end
  
  def edit
  @customer = Customer.find(params[:id])
  @customer_name = @customer.last_name + @customer.first_name
  end
  
  
end
