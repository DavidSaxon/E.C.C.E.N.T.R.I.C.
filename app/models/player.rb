class Player < ActiveRecord::Base
  belongs_to :user, validate: true
  belongs_to :simulation, validate: true
  has_many :policy, dependent: :destroy
end
