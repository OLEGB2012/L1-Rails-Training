class AddFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :weight, :integer
    add_column :products, :in_stock, :boolean
    add_column :products, :expiration_date, :date
  end
end
