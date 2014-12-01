class Business < ActiveRecord::Base
	has_many :business_events, :class_name => 'BusinessEvent', :dependent => :destroy
	has_many :events, :through => :business_events
end
