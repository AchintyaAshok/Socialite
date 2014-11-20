class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :yelp_Id
      t.float :lat
      t.float :long
      t.string :address
      t.string :phone
      t.timestamps
    end
  end
end
