class Simulation < ActiveRecord::Base
	has_many :players
	validates :name, presence: true, length: { minimum: 5 }
end
