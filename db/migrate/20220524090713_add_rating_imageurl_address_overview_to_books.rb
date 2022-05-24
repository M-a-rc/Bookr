class AddRatingImageurlAddressOverviewToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :rating, :integer
    add_column :books, :image_url, :string
    add_column :books, :address, :string
    add_column :books, :overview, :text
  end
end
