class Api::V1::SearchController < ApplicationController

  def index
    searches = Search.all
    render json: searches
  end
  
end
