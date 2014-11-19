class UserEvents < ActiveRecord::Base
	belongs_to :users
	belongs_to :events
end
