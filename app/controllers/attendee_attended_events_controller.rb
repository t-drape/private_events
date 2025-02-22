class AttendeeAttendedEventsController < ApplicationController
  # def new
  #   @event_id = params[:event_id]
  #   @event_attend = AttendeeAttendedEvent.new()
  # end
  # 
  def new
    @event_added = current_user.attendee_attended_events.new
    @attendee = current_user
    @event_attend = @attendee.attendee_attended_events.build(attended_event_id: params[:event_id])
    if @event_attend.save
      redirect_to Event.find(params[:event_id])
    end
  end
end
