class Events < ActiveRecord::Base
	belongs_to :businessmodel

	# Rest of code here

	has_many :user_events, :class_name => 'UserEvents', :dependent => :destroy
	has_many :users, :through => :user_events

end
