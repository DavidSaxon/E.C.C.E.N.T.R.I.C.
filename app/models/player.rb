class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :simulation
  has_many :policy, dependent: :destroy
end
