class Order < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :status, presence: true
  STATUSES = %i[pending accepted refused].map(&:to_s).freeze
  validates :status, inclusion: { in: %w[pending accepted refused] }
end
