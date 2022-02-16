class WordsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

# show all words
def index 
    words = Word.all
    render json: words, status: :ok
end

# finds one word by id 
def show 
    render json: find_word_params, status: :ok
end

# creates a new word
def create
    word = Word.create!(create_params)
    render json: word, status: :created
end

# updates a word
def update 
    word = Word.find_by(id: params[:id])
    word.update(create_params)
    render json: wordd
end

# deletes one word
def destroy
    word = find_word_params
    word.destroy
    head :no_content
end 

private 

def create_params
    params.permit(:word, :definition, :source)
end

def find_word_params
    Word.find(params[:id])
end

def render_not_found_response
    render json: {"error": "Word not found"}, status: :not_found
end

end

