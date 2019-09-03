class MakeChangesToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :title, :name
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 9, scale: 2
    remove_column :products, :isbn, :string
  end
end
