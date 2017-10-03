class Bus < ApplicationRecord
  validates :seats, :city_d, :city_a, :date_a, :date_d, presence: true
end
