class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :member_type
      t.text :details

      t.timestamps
    end
  end
end
