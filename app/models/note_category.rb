class NoteCategory < ApplicationRecord
    has_many :notes
    belongs_to :user, optional: true
end

# Next step: build out option to sort notes by category