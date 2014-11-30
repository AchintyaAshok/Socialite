class BusinessEvent < ActiveRecord::Base
	belongs_to :events
	belongs_to :businesses
end
