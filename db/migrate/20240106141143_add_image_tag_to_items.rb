class AddImageTagToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :image_tag, :string
  end
end
