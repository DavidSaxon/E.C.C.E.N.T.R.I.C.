class Setting < ActiveRecord::Base
	has_many :policies, dependent: :destroy
end
