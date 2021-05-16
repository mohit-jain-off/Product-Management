class CreateProjecttabs < ActiveRecord::Migration[6.1]
  def change
    create_table :projecttabs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
