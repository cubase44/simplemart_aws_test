class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name null: false
      t.string :name_kana null: false
      t.string :zip_code null: false
      t.string :address null: false
      t.string :phone_number null: false
      t.string :email null: false
      t.string :password_digest
      t.string :customer_status
      t.timestamps
    end
  end
end
