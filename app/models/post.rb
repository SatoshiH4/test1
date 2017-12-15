class Post < ApplicationRecord
    belongs_to :user
    validates :plan_name, presence: true
end
