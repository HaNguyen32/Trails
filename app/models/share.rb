class Share < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    with_options presence: true do
        #validates :image
        validates :title 
        validates :user_id
    end
end
