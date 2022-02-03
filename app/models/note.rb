class Note < ApplicationRecord
    belongs_to :user
    belongs_to :note_category
end
