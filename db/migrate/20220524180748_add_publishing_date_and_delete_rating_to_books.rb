class AddPublishingDateAndDeleteRatingToBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :rating, :integer
    add_column :books, :publishing_date, :date
  end
end
