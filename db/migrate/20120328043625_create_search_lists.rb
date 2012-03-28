class CreateSearchLists < ActiveRecord::Migration
  def change
    create_table :search_lists do |t|

      t.timestamps
    end
  end
end
