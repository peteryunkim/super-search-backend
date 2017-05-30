class Api::V1::SearchController < ApplicationController

  def index
    searches = Search.all
    render json: searches
  end

  def create
  	
  end


  def destroy

  end
  
end
