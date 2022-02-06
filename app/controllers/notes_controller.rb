class NotesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

# show all notes
def index 
    notes = Note.all
    render json: notes, status: :ok
end

# finds one note by id 
def show 
    render json: find_note, status: :ok
end

def update 
end

# deletes one note
def destroy
    note = find_note
    note.destroy
    head :no_content
end 

private 

def find_note
    Note.find(params[:id])
end

def render_not_found_response
    render json: {"error": "Note not found"}, status: :not_found
end

end
