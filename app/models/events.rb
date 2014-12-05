class Events < ActiveRecord::Base
	enum privacy: {isPublic: 0, isFriends: 1} # either visible to public or only to friends

	has_many :person_events, :dependent => :destroy
	has_many :people, :through => :person_events
	belongs_to :venue
end
