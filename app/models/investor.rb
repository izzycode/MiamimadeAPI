class Investor < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :vertical

  validates_presence_of :address, :description, :founded_date
  validates :name, presence: true, uniqueness:true

  def approve
    self.approval = true
  end

  def self.grab_location
    Investor.all.map do |investor|
      [investor.latitude, investor.longitude]
    end
  end
end
