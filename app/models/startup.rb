class Startup < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :vertical

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  # validates :description, presence: true
  # validates :founded_date, presence: true
  # validates :description, length:{ maximum:100 }
  def approve
    self.approval = true
  end

  def self.grab_location
    Startup.all.map do |startup|
      [startup.latitude, investor.longitude]
    end
  end
end
