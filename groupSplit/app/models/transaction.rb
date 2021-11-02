class Transaction < ApplicationRecord
  validates_presence_of :user_name
  validates_presence_of :group_name
  validates_presence_of :trans_number
  validates_presence_of :trans_type
  validates_presence_of :group_member
  validates_presence_of :trans_date
end
