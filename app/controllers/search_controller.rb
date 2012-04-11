class SearchController < ApplicationController
  def index
  end
 
  def result
    # Extract query from GET param
    query = params[:q]
    #@result = Google::Search::Web.new(:query => query)    
  
    @result = GSearchParser.webSearch(query)

    # Get the current list associated with this session
    @list = current_search_list

    # Create a new search_item attached to this list from the query
    search_item = @list.search_items.build(query: query)

    # Save to database
    search_item.save
  end

end
