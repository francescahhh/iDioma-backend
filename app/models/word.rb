class Word < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :word_category, optional: true
end
