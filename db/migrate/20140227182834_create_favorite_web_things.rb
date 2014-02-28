class CreateFavoriteWebThings < ActiveRecord::Migration
  def change
    create_table :favorite_web_things do |t|
      t.string :title
      t.text :body
      t.string :img_url
      t.string :url

      t.timestamps
    end
  end
end
