class SearchList < ActiveRecord::Base
  has_many :search_items, dependent: :destroy
end
