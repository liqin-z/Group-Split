class TransactionsController < ApplicationController
  
  def index
    @transactions = Transaction.all
  end
    
  def new
  end
    
  def create
    @transaction = Transaction.create!(transaction_params)
    flash[:notice] = "transaction of #{@transaction.trans_number} was successfully created."
    redirect_to '/groupviews/index'
  end
    
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def transaction_params
    params.require(:transaction).permit(:user_name, :group_name, :trans_number, :trans_type, :group_member, :trans_date)
  end
    
end
