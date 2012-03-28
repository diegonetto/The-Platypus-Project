class SearchController < ApplicationController
  def index
  end
 
  def result
    query = params[:q]
    @result = Google::Search::Web.new(:query => query)    
  end

end
