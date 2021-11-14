class CreatePaymentSummaries < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_summaries do |t|
      t.string :user_name
      t.string :group_name
      t.decimal :balance

      t.timestamps
    end
  end
end
