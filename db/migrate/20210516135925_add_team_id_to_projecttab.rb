class AddTeamIdToProjecttab < ActiveRecord::Migration[6.1]
  def change
    add_column :projecttabs, :team_id, :integer
  end
end
