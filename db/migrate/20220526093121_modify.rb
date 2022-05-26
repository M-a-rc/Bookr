class Modify < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :status, :string, null: false, default: "pending"
  end
end
