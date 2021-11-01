class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :user_name
      t.string :group_name
      t.decimal :trans_number
      t.string :trans_type
      t.string :group_member
      t.datetime :trans_date

      t.timestamps
    end
  end
end
