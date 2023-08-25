class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shares
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex


  with_options presence: true do
    validates :nick_name
    validates :last_name, format: { with: /\A[A-Za-z ]+\z/ }
    validates :first_name, format: { with: /\A[A-Za-z ]+\z/ }
    validates :sex_id, numericality: { other_than: 1 }  
    validates :date_birth
    validates :password, format: { with: /\A[a-z0-9]+\z/ },
                          length: { minimum: 8 }                   
  end
end
