class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :msrp
      t.boolean :new
      t.boolean :featured
      t.text :image_name

      t.timestamps null: false
    end
  end
end
