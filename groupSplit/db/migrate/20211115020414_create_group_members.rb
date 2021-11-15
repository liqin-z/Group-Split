class CreateGroupMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_members do |t|
      t.string :group_id
      t.string :member_name

      t.timestamps
    end
  end
end
