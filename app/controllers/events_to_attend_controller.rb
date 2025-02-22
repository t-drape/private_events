class EventsToAttendController < ApplicationController
  def new
    @event = params[:event_id]
    # @event_attend = current_user.events_to_attend.build(attended_event_id: @event_id, event_attendee_id: current_user.id)
    # if @event_attend.save
    #   redirect_to Event.find(@event_id)
    # end
  end

  def create
  end
end
