class Api::V1::NoteController < ApplicationController

  def index
  	notes = Note.all
  	render json: notes
  end

  def create
  	search = Search.find_or_create_by(search_term: params[:search_term])
  	note = Note.new(body: params[:body], search_id: search.id)
  	note.save
  	render json: note
  end

  def update
  	note = Note.find(params[:id])
  	note.update(body: params[:body])
  	render json: note
  end

  def destroy
  	note = Note.find(params[:id])
  	# binding.pry
  	note.delete
  	render json: note
  end

  # private

  # def note_params

  # end

  
end
