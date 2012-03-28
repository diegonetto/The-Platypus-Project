class CreateSearchItems < ActiveRecord::Migration
  def change
    create_table :search_items do |t|
      t.integer :search_list_id
      t.string :query

      t.timestamps
    end
  end
end
