class Item < ApplicationRecord
    has_many :cart, dependent: :destroy
end
