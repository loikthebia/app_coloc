class Coloc < ActiveRecord::Base
	geocoded_by :adress
	after_validation :geocode
	has_many :users
end
