class CreateUserMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meetings do |t|
      t.boolean :confirmed
      t.references :user, foreign_key: true
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
