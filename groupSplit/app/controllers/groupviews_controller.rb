class GroupviewsController < ApplicationController
  def index
    @transactions = Transaction.all
    @payments = PaymentSummary.all
    @members = GroupMember.all

    PaymentSummary.find_each(&:destroy) # update after transaction deleted
    @transactions.each do |t|
      puts 'doing new trans ------------------------------'
      current_user_name = t.user_name.strip
      current_group_name = t.group_name
      current_trans_number = t.trans_number

      if t.group_member.nil?
          involved_members = []
      else
          involved_members = t.group_member.delete('[]"').split(', ',999)
      end
      # puts involved_members
      involved_member_number = involved_members.length

      # puts involved_member_number

      next if current_user_name.blank? || current_trans_number.blank?

      unless GroupMember.exists?(member_name: current_user_name)
        gm_entry = GroupMember.new
        gm_entry.member_name = current_user_name
        gm_entry.save
      end

      ## Calculate individual balance
      individual_amount = current_trans_number / involved_member_number
      unless current_user_name.empty?
        puts current_user_name
        if PaymentSummary.exists?(user_name: current_user_name)
          puts '1111'
          puts '1111'
          puts '1111'
          ps = PaymentSummary.find_by(user_name: current_user_name)
          puts ps.balance
          ps.balance -= individual_amount
          ps.save
          ## TODO: plus balance for other involved members
        elsif !PaymentSummary.exists?(user_name: current_user_name)
          ## Update if transaction got deleted
          puts '2222'
          puts '2222'
          puts '2222'
          ps_entry = PaymentSummary.new
          ps_entry.user_name = current_user_name
          ps_entry.group_name = current_group_name
          ps_entry.balance = -individual_amount
          ps_entry.save
        end
      end

      involved_members.each do |m|
        if m == current_user_name
          puts 'pass'
        else
          if PaymentSummary.exists?(user_name: m)
            current_balance = PaymentSummary.where(:user_name => m).pluck(:balance).first
            puts current_balance
            ps = PaymentSummary.find_by(user_name: m)
            ps.balance = current_balance + individual_amount
            ps.save
          else
            ps_entry = PaymentSummary.new
            ps_entry.user_name = m
            ps_entry.group_name = current_group_name
            ps_entry.balance = individual_amount
            ps_entry.save
          end
        end
      end


    end





  end
end