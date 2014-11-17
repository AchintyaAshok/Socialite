class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :yelp_Id
      t.string :ll
      t.string :address
      t.string :phone
      t.integer :review_count
      t.float :rating
      t.timestamps
    end
  end
end
