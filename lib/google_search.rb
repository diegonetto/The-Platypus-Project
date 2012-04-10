require 'open-uri'
require 'nokogiri'

#######################################
#                                     #
#        GoogleSearch Class           #
#                                     #
#######################################
class GoogleSearch
  attr_accessor :results

  # Class initializer
  def initialize(query) 
    # Initialize array
    @results = Array.new 

    # TODO: Format query
    
    # TODO: Fetch page

    # TODO: Grab all result divs and parse content into Result objects,
    # and finally store these in the results array
    @results << Result.new("Test Title", "Some lame HTML content here", "http://www.google.com")
  end

  # Iterator over results
  def each(&blk)
    @results.each(&blk)
  end

  #######################################
  #                                     #
  #           Result Class              #
  #                                     #
  #######################################
  class Result
    attr_accessor :title, :content, :uri
  
    # Class initializer
    def initialize(title, content, uri)
      @title = title
      @content = content
      @uri = uri
    end  
 
  end # Result

end # GoogleSearch
