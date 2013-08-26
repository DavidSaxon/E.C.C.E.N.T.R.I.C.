class Simulation < ActiveRecord::Base
	has_many :players, dependent: :destroy
	validates :name, presence: true, length: { minimum: 5 }
end
