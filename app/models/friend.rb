class Friend < ActiveRecord::Base
	belongs_to :person, class_name: "Person"
	belongs_to :friend, class_name: "Person"
end
