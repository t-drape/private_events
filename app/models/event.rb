class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User"

  has_many :events_to_attend, foreign_key: :attended_event_id
  has_many :attendees, through: :events_to_attend, source: :event_attendee
end
