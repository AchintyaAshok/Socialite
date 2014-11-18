class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name, null: false
    	t.string :last_name, null: false
    	t.string :username, null: false
    	t.string :email, null: false
    	t.timestamps
    end
    add_index :users, :username # so that people can search for others by username
  end
end
