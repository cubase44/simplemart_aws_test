class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_description
      t.string :price
      t.string :sale_status
      t.timestamps
    end
  end
end
