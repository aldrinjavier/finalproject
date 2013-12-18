class Genre < ActiveRecord::Base
	has_many :albums
	validates_presence_of :genre
	validates_uniqueness_of :genre
end
