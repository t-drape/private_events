class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :validatable

  has_many :created_events, foreign_key: :event_creator_id, class_name: "Event"

  has_many :attendee_attended_events, foreign_key: :attendee_id
  has_many :attended_events, through: :attendee_attended_events
end
