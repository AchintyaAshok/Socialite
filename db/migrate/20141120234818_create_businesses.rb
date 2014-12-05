class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.timestamps
      t.string :name, null: false
      t.string :number, null: false
      t.string :email, null: false
      t.string :address, null: false
    end
  end
end
