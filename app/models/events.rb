class Events < ActiveRecord::Base
	has_many :person_events, :dependent => :destroy
	has_many :people, :through => :person_events
	belongs_to :venue
end
