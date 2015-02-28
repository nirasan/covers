class CreateBooksBrowseNodes < ActiveRecord::Migration
  def change
    create_table :books_browse_nodes do |t|
      t.integer :book_id
      t.integer :browse_node_id
    end
  end
end
