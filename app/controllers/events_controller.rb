class EventsController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]
  def index
    @events = Event.all
  end

  def new
    @event = Event.new()
  end

  def create
    @creator = User.find(current_user) # switch to current_user
    @event = @creator.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @attendees = User.where(id: (AttendeeAttendedEvent.select(:attendee_id).where(attended_event_id: Event.joins(:attendee_attended_events))))
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.expect(event: [ :name, :place, :event_date ])
  end
end
