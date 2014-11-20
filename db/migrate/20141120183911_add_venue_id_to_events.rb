class AddVenueIdToEvents < ActiveRecord::Migration
  def change
  	add_reference :events, :venue
  end
end
