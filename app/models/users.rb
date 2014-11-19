class Users < ActiveRecord::Base
	has_many :user_events, :class_name => 'UserEvents', :dependent => :destroy
	has_many :events, :through => :user_events
end