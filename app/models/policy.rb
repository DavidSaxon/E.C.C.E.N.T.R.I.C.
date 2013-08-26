class Policy < ActiveRecord::Base
  belongs_to :player
  belongs_to :setting
end
