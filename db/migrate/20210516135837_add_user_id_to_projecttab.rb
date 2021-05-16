class AddUserIdToProjecttab < ActiveRecord::Migration[6.1]
  def change
    add_column :projecttabs, :user_id, :integer
  end
end
