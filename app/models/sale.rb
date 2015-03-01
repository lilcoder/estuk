class Sale < ActiveRecord::Base
	before_create :populate_grid
	belongs_to :book

	private	
	
	def populate_grid
		self.grid = SecureRandom.uuid()
	end
end
