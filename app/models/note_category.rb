class NoteCategory < ApplicationRecord
    has_many :notes
    belongs_to :user, optional: true
end
