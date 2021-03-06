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


  enum vertical: ["Advertising", "Apps", "Biotechnology", "E-Commerce", "Community and lifestyle", "Consumer Electronics", "Content and Publishing","Data","Education","Fashion","Finance","Food and Beverage","Government and Military","Hardware","Healthcare","Internet Services","Marketing","Media and Entertainment","Mobile","Pharmaceuticals","Software","Real-estate"]

end

# Advertising 0
# Apps 1
# Biotechnology 2
# Commerce and Shopping 3
# Community and Lifestyle 4
# Consumer Electronics 5
# Content and Publishing 6
# Data and Analytics 7
# Education 8
# Fashion 9
# Financial Services 10
# Food and Beverage 11
# Government and Military 12
# Hardware 13
# Healthcare 14
# Internet Services 15
# Manufacturing 16
# Media and Entertainment 17
# Mobile 18
# Pharmaceuticals 19
# Software 20
# Real Estate 21
