class User < ApplicationRecord
  has_many :groups
  validates name, presence: true
  validates :email, presence: true
end
