class Share < ApplicationRecord
    has_many_attached :images
    belongs_to :user
    with_options presence: true do
        validates :images
        validates :title 
        validates :user_id
    end
end
