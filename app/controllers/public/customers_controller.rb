class Public::CustomersController < ApplicationController

def show
 @customer = current_customer
end

def edit
  @customer = current_customer
end

def update
  @customer = current_customer
  if @customer.update(customer_params)
    flash[:notice] = "You have updated my page successfully."
    redirect_to customers_my_page_path
  else
    flash[:notice] = "You have updated my page failed."
    render :edit
  end
end

def quit
  @customer = current_customer
end

def out
   @customer = current_customer
    @customer.update(is_deleted: true)
    #sessionIDのresetを行う
    reset_session
    #指定されたrootへのpath
    redirect_to root_path 
end


end
