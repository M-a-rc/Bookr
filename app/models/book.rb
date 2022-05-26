class Book < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy

  validates :title, :author, :address, :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Search gem PG
  include PgSearch::Model
  pg_search_scope :search_by_title_and_author,
    against: [:title, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
