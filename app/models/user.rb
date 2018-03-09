class User < ActiveRecord::Base
    has_many :articles
    before_save { self.email = email.downcase }
    validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 25}
    has_secure_password
end
