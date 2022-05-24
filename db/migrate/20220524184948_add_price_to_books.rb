class AddPriceToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :price, :float
  end
end
