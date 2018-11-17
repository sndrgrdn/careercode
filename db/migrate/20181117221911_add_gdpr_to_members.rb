class AddGdprToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :gdrp, :boolean
  end
end
