class WordsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

# show all words
def index 
    words = Word.all
    render json: words, status: :ok
end

# finds one word by id 
def show 
    render json: find_word, status: :ok
end

def update 
end

# deletes one word
def destroy
    word = find_word
    word.destroy
    head :no_content
end 

private 

def find_word
    Word.find(params[:id])
end

def render_not_found_response
    render json: {"error": "Word not found"}, status: :not_found
end

end

