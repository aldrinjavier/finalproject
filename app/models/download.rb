class Download < ActiveRecord::Base
	belongs_to :customer
	belongs_to :album
	
	validates_presence_of :customer
	validates_presence_of :album
	validates_presence_of :date
	validates_presence_of :payment_method
end
