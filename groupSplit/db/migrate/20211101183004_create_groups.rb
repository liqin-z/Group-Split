class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :created_by_user_id

      t.timestamps
    end
  end
end
