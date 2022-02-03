class User < ApplicationRecord
    has_many :words
    has_many :word_categories, through: :words
    has_many :notes
    has_many :note_categories, through: :notes
end
