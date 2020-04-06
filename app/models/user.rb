class User < ApplicationRecord
    has_secure_password
    has_many :posts
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, :url => "/:class/:attachment/:id/:style_:filename"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
