class Category < ApplicationRecord
    has_many :clubs
    has_many :events
end
