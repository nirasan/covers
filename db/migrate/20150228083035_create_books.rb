class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.string :asin
      t.text :page_url
      t.text :small_image
      t.text :medium_image
      t.text :large_image
      t.text :description

      t.timestamps
    end
  end
end
