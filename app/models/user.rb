class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    def authenticate(password)
        if BCrypt::Password.new(self.password_digest) == password 
            self
        else
            false
    end
end

    has_many :words
    has_many :word_categories, through: :words
    has_many :notes
    has_many :note_categories, through: :notes
end
