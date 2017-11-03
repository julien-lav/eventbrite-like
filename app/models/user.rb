class User < ApplicationRecord
	has_many :authored_events, :foreign_key => :creator_id, :class_name => 'Event'
	has_and_belongs_to_many :attended_events, :class_name => 'Event', :join_table => :events_users
end
