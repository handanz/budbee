class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :description
      t.date :time
      t.string :address
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
