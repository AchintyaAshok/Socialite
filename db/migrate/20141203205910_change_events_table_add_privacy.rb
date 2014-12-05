class ChangeEventsTableAddPrivacy < ActiveRecord::Migration
  def change
  	# if the event has been created by a business, it's visibility should be public, by default
  	add_column :events, :business_created, :boolean, :null => false, :default => false
  	add_column :events, :business_id, :integer, :default => :null
  	add_column :events, :person_id, :integer, :default => :null
  	# Public: 0, Only Friends: 1
  	add_column :events, :privacy, :integer, :default => 0, :null => false 
  end
end