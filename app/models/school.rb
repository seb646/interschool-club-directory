class School < ApplicationRecord
    belongs_to :user
    has_many :clubs
end
