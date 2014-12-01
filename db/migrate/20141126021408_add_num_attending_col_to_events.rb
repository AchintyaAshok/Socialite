class AddNumAttendingColToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :num_attending, :integer
  end
end
