class TransactionsController < ApplicationController
    
  def show
    id = params[:id] # retrieve movie ID from URI route
    @transaction = Transaction.find(id) # look up movie by unique ID
    # will render app/views/transaction/show.<extension> by default
  end
    
  def index
  end
    
  def new
    @member_names = GroupMember.pluck(:member_name).append('ALL')
    @user_names = GroupMember.pluck(:member_name)
    @group_names = Transaction.distinct.pluck(:group_name)
  end
    
  def create
    @transaction = Transaction.create!(transaction_params)
    flash[:notice] = "transaction of #{@transaction.trans_number} was successfully created."
    redirect_to '/groupviews/index'
  end
  
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    flash[:notice] = "Transaction '#{@transaction.id}' deleted."
    redirect_to '/groupviews/index'
  end
  
    
  def edit
    @transaction = Transaction.find(params[:id])
    @user_names = GroupMember.pluck(:member_name)
    @member_names = GroupMember.pluck(:member_name).append('ALL')
    @group_names = Transaction.distinct.pluck(:group_name)
  end
  
  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update_attributes!(transaction_params)
    flash[:notice] = "Transaction #{@transaction.id} was successfully updated."
    redirect_to transaction_path(@transaction)
  end
    
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def transaction_params
    params.require(:transaction).permit(:user_name, :group_name, :trans_number, :trans_type, :trans_date, group_member: [])
  end
    
end