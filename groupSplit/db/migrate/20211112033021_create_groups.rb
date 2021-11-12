class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
        t.string :user_name
        t.string :group_name
    end
  end
end
