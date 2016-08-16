class Vertical < ApplicationRecord
  has_many :investors
  has_many :startups

  validates :name, presence: true, uniqueness: true
end
