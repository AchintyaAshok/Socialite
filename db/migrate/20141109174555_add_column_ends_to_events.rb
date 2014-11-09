class AddColumnEndsToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :ends, :DateTime
  end
end
