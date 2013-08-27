class Simulation < ActiveRecord::Base
	has_many :players, dependent: :destroy
	has_many :policies, through: :players
	validates :name, presence: true, length: { minimum: 5 }
end
