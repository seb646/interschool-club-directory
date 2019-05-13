class Club < ApplicationRecord
    belongs_to :user
    belongs_to :school
    # belongs_to :category
    has_many :events
end
