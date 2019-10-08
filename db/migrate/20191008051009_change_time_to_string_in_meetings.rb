class ChangeTimeToStringInMeetings < ActiveRecord::Migration[5.2]
  def up
    change_column :meetings, :time, :string
  end

  def down
    change_column :meetings, :time, :datetime
  end
end
