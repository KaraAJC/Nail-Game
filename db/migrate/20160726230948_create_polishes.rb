class CreatePolishes < ActiveRecord::Migration
  def change
    create_table :polishes do |t|

      t.timestamps null: false
    end
  end
end
