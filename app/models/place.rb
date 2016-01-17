class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true
	validates :address, :presence => true, :length => {:minimum => 3}
	validates :description, :presence => true

	geocoded_by :address
	after_validation :geocode
end