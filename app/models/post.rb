class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :file
    validates :body, presence: true, allow_blank: false
end
