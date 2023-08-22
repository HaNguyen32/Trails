class CreateShares < ActiveRecord::Migration[7.0]
  def change
    create_table :shares do |t|
      t.string :title,                  null: false
      t.string :area,                   null: false
      t.string :mountain_area,          null: false
      t.string :mountain_name,          null: false
      t.string :date_entry,             null: false
      t.string :date_exit,              null: false
      t.string :companions
      t.string :access,                 null: false
      t.string :course,                 null: false
      t.string :itinerary,              null: false
      t.text   :activity_record,        null: false
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
