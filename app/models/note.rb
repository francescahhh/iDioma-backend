class Note < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :note_category, optional: true
end
