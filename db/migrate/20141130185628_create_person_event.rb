class CreatePersonEvent < ActiveRecord::Migration
  def change
    create_table :person_events do |t|
    	t.belongs_to :people
    	t.belongs_to :events
    	t.boolean :following, 	null: false, default: true 		# true is the user is following this event
    	t.boolean :going, 		null: false, default: false		# true if the user is going to the event
      	t.timestamps
    end
  end
end
