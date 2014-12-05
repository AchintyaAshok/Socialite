class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
	  t.belongs_to :person
	  t.belongs_to :friend 		
      t.timestamps
    end
  end
end
