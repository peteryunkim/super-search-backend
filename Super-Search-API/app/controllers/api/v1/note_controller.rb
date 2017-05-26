class Api::V1::NoteController < ApplicationController

  def index
  	notes = Note.all
  	render json: notes
  end

  
end
