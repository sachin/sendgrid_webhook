class Campaign < ApplicationRecord
  has_many :notifications, inverse_of: :campaign, dependent: :delete_all

  validates :name, presence: true, length: {minimum: 2}
end
