class GroupviewsController < ApplicationController
  def index
    @transactions = Transaction.all
  end
  
   #right now show and index are the same which is incorrect and hacky - did this just to get tests working
    # figure out the correct home page and fix this
  def show
   @transactions = Transaction.all
  end
end
