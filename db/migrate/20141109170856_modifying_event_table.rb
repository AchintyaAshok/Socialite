class ModifyingEventTable < ActiveRecord::Migration
  def change
  	add_column :events, :name, :string
  	add_column :events, :description, :text
  	add_column :events, :venue, :string
  	add_column :events, :starts, :DateTime
  end
end
