class AddStartingAndEndingDatesToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :starting_date, :date
    add_column :orders, :ending_date, :date
  end
end
