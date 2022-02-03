class Word < ApplicationRecord
    belongs_to :user
    belongs_to :word_category
end
