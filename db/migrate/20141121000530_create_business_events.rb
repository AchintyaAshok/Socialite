class CreateBusinessEvents < ActiveRecord::Migration
  def change
    create_table :business_events do |t|
      t.timestamps
      t.belongs_to :events
      t.belongs_to :businesses
    end
  end
end
