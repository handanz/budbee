class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :city
      t.integer :limitation
      t.boolean :confirmed

      t.timestamps
    end
  end
end
