class AddColsToPeopleAndEvents < ActiveRecord::Migration
  def change
  	add_column :events, :main_image_url, :string, :default => :null
  	add_column :people, :profile_image_url, :string, :default => :null
  end
end
