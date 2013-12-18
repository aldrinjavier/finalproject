class Album < ActiveRecord::Base
	has_many :downloads
	has_many :posts, :dependent => :destroy
	belongs_to :artist
	belongs_to :genre
	belongs_to :label
	validates_presence_of :title
	validates_uniqueness_of :title
	validates_presence_of :cover
	validates_presence_of :price
	validates_presence_of :date_released
	validates_presence_of :duration
	validates_presence_of :artist
	validates_presence_of :genre
	validates_presence_of :label
	
	def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['title LIKE  ?', search_condition])
	end
end
