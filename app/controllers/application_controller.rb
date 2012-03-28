class ApplicationController < ActionController::Base
  protect_from_forgery

  private

    # Function that returns the search_list associated with
    # the current session
    def current_search_list
      SearchList.find(session[:search_list_id])
    rescue ActiveRecord::RecordNotFound
      list = SearchList.create
      session[:search_list_id] = list.id
      list
    end
end
