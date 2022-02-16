class WordCategory < ApplicationRecord
    has_many :words
    belongs_to :user, optional: true
end
