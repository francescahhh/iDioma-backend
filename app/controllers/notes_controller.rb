class NotesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

# show all notes
def index 
    notes = Note.all
    render json: notes, status: :ok
end

# finds one note by id 
def show 
    render json: find_note_params, status: :ok
end

# creates a new note
def create
    note = Note.create!(create_params)
    render json: note, status: :created
end

# updates a note
def update 
    note = Note.find_by(id: params[:id])
    note.update(create_params)
    render json: note
end

# deletes one note
def destroy
    note = find_note_params
    note.destroy
    head :no_content
end 

private 

def create_params
    params.permit(:content)
end

def find_note_params
    Note.find(params[:id])
end

def render_not_found_response
    render json: {"error": "Note not found"}, status: :not_found
end

end
