class WordCategory < ApplicationRecord
    has_many :words
    belongs_to :user, optional: true
end

# Next step: build out option to sort words by category
