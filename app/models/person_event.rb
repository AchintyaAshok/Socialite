class PersonEvent < ActiveRecord::Base
	belongs_to :people
	belongs_to :events
end
