class Share < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    with_options presence: true do
        validates :image
        validates :title 
        validates :area
        validates :mountain_area
        validates :mountain_name 
        validates :date_entry
        validates :date_exit
        validates :access
        validates :course
        validates :itinerary
        validates :activity_record
        validates :user_id
    end
end
