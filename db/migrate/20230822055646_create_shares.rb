class CreateShares < ActiveRecord::Migration[7.0]
  def change
    create_table :shares do |t|
      t.string :title,                  null: false
      t.string :area
      t.string :mountain_area
      t.string :mountain_name
      t.string :date_entry
      t.string :date_exit
      t.string :companions
      t.string :access
      t.string :course
      t.string :itinerary
      t.text   :activity_record
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
