class Book < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy

  validates :title, :author, :address, :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
