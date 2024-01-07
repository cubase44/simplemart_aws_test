class User < ApplicationRecord
    has_secure_password
    has_many :cart, dependent: :destroy

    validates :name, presence: true
    validates :name_kana, presence: true
    validates :zip_code, presence: true
    validates :address, presence: true
    validates :phone_number, presence: true
    validates :email, presence: true, uniqueness: true
    
end
