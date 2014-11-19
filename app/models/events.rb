class Events < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :businessmodel

	# Rest of code here
=======
	has_many :user_events, :class_name => 'UserEvents', :dependent => :destroy
	has_many :users, :through => :user_events
>>>>>>> be_master
end
