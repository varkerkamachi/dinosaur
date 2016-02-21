class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :large_image1
      t.string :large_image2
      t.string :large_image3
      t.string :map_image
      t.string :thumbnail
      t.references :dino, foreign_key: true
      t.boolean :user_uploaded

      t.timestamps
    end
  end
end
