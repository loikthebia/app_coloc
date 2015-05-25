class Coloc < ActiveRecord::Base
	has_many :users
	geocoded_by :adress
	after_validation :geocode
end
