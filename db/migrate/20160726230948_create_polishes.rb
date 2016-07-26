class CreatePolishes < ActiveRecord::Migration
  def change
    create_table :polishes do |t|
      t.string :name
      t.string :brand
      t.string :hex_color
      t.string :photo_url
      t.timestamps null: false
    end
  end
end
