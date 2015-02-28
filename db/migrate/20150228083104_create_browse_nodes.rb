class CreateBrowseNodes < ActiveRecord::Migration
  def change
    create_table :browse_nodes do |t|
      t.text :name
      t.integer :number

      t.timestamps
    end
  end
end
