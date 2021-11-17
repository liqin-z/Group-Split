class GroupviewsController < ApplicationController
  def index
    @transactions = Transaction.all
    @payments = PaymentSummary.all
    @members = GroupMember.all

    PaymentSummary.find_each(&:destroy) # update after transaction deleted
    @transactions.each do |t|
      current_user_name = t.user_name
      current_group_name = t.group_name
      current_trans_number = t.trans_number
      next if current_user_name.blank? || current_group_name.blank? || current_trans_number.blank?

      ## Update group members
      # NO NEED TO REMOVE GROUP MEMBER EVEN IF TRANSACTION DELETED
      # TODO: Manualy CRUD members
      #

      if !GroupMember.exists?(member_name: current_user_name)
        gm_entry = GroupMember.new
        gm_entry.member_name = current_user_name
        gm_entry.save
      end

      ## Calculate individual balance
      individual_amount = current_trans_number / 2
      ## TODO: wait for CHENZHI implementation of specifying multiple users in transaction
      if !current_user_name.strip.empty?
        if PaymentSummary.exists?(user_name: current_user_name, group_name: current_group_name)
          ps = PaymentSummary.find_by(user_name: current_user_name, group_name: current_group_name)
          ps.balance -= individual_amount
          ## TODO: plus balance for other involved members
        elsif !PaymentSummary.exists?(user_name: current_user_name)
          ## Update if transaction got deleted
          ps_entry = PaymentSummary.new
          ps_entry.user_name = current_user_name
          ps_entry.group_name = current_group_name
          ps_entry.balance = -individual_amount
          ps_entry.save
        end
      end
    end





  end
end