class GroupviewsController < ApplicationController
  def index
    @transactions = Transaction.all

  end
   
end
