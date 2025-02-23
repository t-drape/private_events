class UsersController < ApplicationController
  def show
    @events = Event.where(event_creator_id: current_user.id)
    @attended = Event.where(id: (AttendeeAttendedEvent.select(:attended_event_id).where(attendee_id: current_user.id)))
    @future = Event.where(id: (AttendeeAttendedEvent.select(:attended_event_id).where(attendee_id: current_user.id))).and(Event.where(event_date: (Time.now.midnight)..))
    @past = Event.where(id: (AttendeeAttendedEvent.select(:attended_event_id).where(attendee_id: current_user.id))).and(Event.where(event_date: ..(Time.now.midnight)))
  end
end
