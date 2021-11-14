class PaymentSummary < ApplicationRecord
  has_many :transactions
end
