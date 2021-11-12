class Group < ApplicationRecord
  validates_presence_of :user_name
  validates_presence_of :group_name
end
